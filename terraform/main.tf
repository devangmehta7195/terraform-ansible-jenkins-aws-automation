resource "aws_vpc" "royal_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "RoyalHotel-VPC"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.royal_vpc.id

  tags = {
    Name = "RoyalHotel-IGW"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.royal_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "RoyalHotel-PublicSubnet"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.royal_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "RoyalHotel-RT"
  }
}

resource "aws_route_table_association" "rt_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_security_group" "developer_sg" {
  name   = "developer-sg"
  vpc_id = aws_vpc.royal_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Developer-SG"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "royalhotel-key"
  public_key = file("/var/lib/jenkins/.ssh/id_rsa.pub")
}

resource "aws_instance" "developer_vm" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.developer_sg.id]
  key_name               = aws_key_pair.deployer.key_name

  tags = {
    Name = "RoyalHotel-DeveloperVM"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("/var/lib/jenkins/.ssh/id_rsa")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install python3 -y"
    ]
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.public_ip},' --private-key /var/lib/jenkins/.ssh/id_rsa --ssh-common-args='-o StrictHostKeyChecking=no' ansible-playbook.yml"
  }
}
