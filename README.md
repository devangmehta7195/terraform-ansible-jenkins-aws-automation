# LG Canada DevOps Project

## Project Overview

This project demonstrates a complete DevOps automation workflow using Terraform, Jenkins, Ansible, AWS, and GitHub.

The infrastructure is provisioned using Terraform, server configuration is managed using Ansible, and CI/CD automation is performed using Jenkins pipelines.

This project was created to demonstrate practical DevOps skills including Infrastructure as Code (IaC), CI/CD automation, cloud provisioning, Linux administration, and configuration management.

---

## Technologies & Tools Used

| Tool / Technology | Purpose                              |
| ----------------- | ------------------------------------ |
| Terraform         | Infrastructure as Code               |
| Jenkins           | CI/CD Pipeline Automation            |
| Ansible           | Configuration Management             |
| AWS EC2           | Cloud Compute Service                |
| AWS VPC           | Networking Infrastructure            |
| GitHub            | Version Control & Repository Hosting |
| Ubuntu Linux      | Operating System                     |
| Git               | Source Code Management               |

---

## AWS Resources Provisioned

The following AWS infrastructure components were created using Terraform:

* VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* EC2 Instance
* SSH Key Pair

---

## CI/CD Pipeline Stages

The Jenkins pipeline automates infrastructure deployment using the following stages:

1. Terraform Init
2. Terraform Validate
3. Terraform Plan
4. Terraform Apply

---

## Ansible Configuration Tasks

After infrastructure provisioning, Ansible performs server configuration tasks including:

* Installing Git
* Installing Docker
* Installing Java
* Installing Nginx
* Creating a Developer User
* Updating Ubuntu Packages

---

## Project Workflow

1. Developer pushes code to GitHub
2. Jenkins pipeline is triggered
3. Terraform provisions AWS infrastructure
4. EC2 instance is created automatically
5. Ansible configures the server environment
6. Deployment process completes successfully

---

## Project Architecture

GitHub → Jenkins → Terraform → AWS Infrastructure → Ansible Configuration

---

## 📂 Repository Structure

```bash
LGcanada-Devops-project/
│
├── terraform/
│   ├── ansible-playbook.yml
│   ├── main.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── screenshots/
│   ├── README.md
│   ├── ansible-server-configuration.png
│   ├── aws-resources-created.png
│   ├── ec2-instance-running.png
│   ├── jenkins-dashboard.png
│   ├── jenkins-pipeline-create-build.png
│   ├── project-architecture.png
│   └── terraform-deployment.png
│
├── .gitignore
├── Jenkinsfile
├── LICENSE
└── README.md
```
```

---

## Key DevOps Concepts Demonstrated

* Infrastructure as Code (IaC)
* Continuous Integration / Continuous Deployment (CI/CD)
* Cloud Infrastructure Automation
* Configuration Management
* AWS Networking
* Linux Server Administration
* Git Version Control
* Jenkins Pipeline Automation

---

## Security Best Practices

Sensitive files are excluded from GitHub using `.gitignore`, including:

* `.terraform/`
* `terraform.tfstate`
* SSH private keys
* `.pem` files

---

## Future Improvements

* Add Docker container deployment
* Integrate Kubernetes
* Configure Jenkins Webhooks
* Implement Terraform Remote Backend
* Add Monitoring & Logging

---

## Author

**Devang Mehta**

DevOps & Cloud Automation Project

---

## License

This project is licensed under the MIT License.
