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
    }
}