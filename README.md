# LGcanada-Devops-project
DevOps automation project using Terraform, Jenkins, Ansible, and AWS for infrastructure provisioning and CI/CD pipeline implementation.

# LG Canada DevOps Project

## Project Overview

This project demonstrates a complete DevOps automation workflow using:

- Terraform
- Jenkins
- Ansible
- AWS EC2
- GitHub

The infrastructure is provisioned using Terraform, configured using Ansible, and automated through Jenkins CI/CD pipelines.

---

# Tools & Technologies Used

| Tool | Purpose |
|------|----------|
| Terraform | Infrastructure as Code |
| Jenkins | CI/CD Automation |
| Ansible | Configuration Management |
| AWS EC2 | Cloud Infrastructure |
| GitHub | Version Control |
| Ubuntu Linux | Operating System |

---

# AWS Resources Used

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- EBS Volume

---

# Jenkins Pipeline Stages

1. Terraform Init
2. Terraform Validate
3. Terraform Plan
4. Terraform Apply

---

# Ansible Configuration Tasks

- Install Git
- Install Docker
- Install Java
- Install Nginx
- Create Developer User

---

# CI/CD Workflow

1. Developer pushes code to GitHub
2. Jenkins triggers pipeline
3. Terraform provisions AWS infrastructure
4. Ansible configures EC2 instance
5. Deployment completes automatically

---

# Project Architecture

GitHub → Jenkins → Terraform → AWS Infrastructure → Ansible Configuration

---

# Repository Structure

```bash
terraform/
├── main.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── ansible-playbook.yml

Jenkinsfile
README.md
docs/
screenshots/
```

---

# Author

Devang Mehta
