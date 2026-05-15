pipeline {
    agent any

    stages {

        stage('Terraform Init') {
            steps {
                dir('/home/ubuntu/LGcanada-project/terraform') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir('/home/ubuntu/LGcanada-project/terraform') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('/home/ubuntu/LGcanada-project/terraform') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('/home/ubuntu/LGcanada-project/terraform') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }

    }
}
