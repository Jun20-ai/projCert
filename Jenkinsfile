pipeline {
    agent any // This means the pipeline can run on any available agent

    stages {
        stage('Checkout') {
            steps {
                git https://github.com/Jun20-ai/projCert.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                // Add test commands here if needed
            }
        }
    }

    post {
        success {
            echo 'Build and tests succeeded!'
        }
        failure {
            echo 'Build or tests failed!'
        }
    }
}

