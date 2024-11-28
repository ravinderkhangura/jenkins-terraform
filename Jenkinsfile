pipeline {
    agent any 
    stages {
        stage('Checkout from Git') { 
            steps {
                git branch: 'main' , url: 'https://github.com/ravinderkhangura/jenkins-terraform.git'
            }
        }
        stage('Terraform version') { 
            steps {
                script {
                    sh 'terraform --version'
                }
            }
        }
    stage('Terraform init') { 
            steps {
                script {
                    sh 'terraform init -reconfigure'
                }
            }
        }
  stage('Terraform plan') { 
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform validate') { 
            steps {
                script {
                    sh 'terraform validate'
                }
            }
        }

         stage('Terraform apply') { 
            steps {
                script {
                    sh 'terraform apply --auto-approve'
                }
            }
        }

        stage('Approve to destroy'){
            steps{
                input message: 'Approve to Destroy', ok: 'Destroy'
            }
        }

         stage('Terraform destroy') { 
            steps {
                script {
                    sh 'terraform destroy --auto-approve'
                }
            }
        }

    }

}