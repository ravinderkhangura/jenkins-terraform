pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage('Git checkout') {
            steps {
              git branch: 'main',
              url: 'https://github.com/ravinderkhangura/jenkins-terraform.git'   

            }
        }
    }
}