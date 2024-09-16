 pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Jun20-ai/projCert.git'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t my-app-image .'
            }
        }
        stage('Deploy') {
            steps {
                // Stop and remove the old container if it exists
                sh 'docker stop my-app-container || true'
                sh 'docker rm my-app-container || true'
                
                // Run the new container
                sh 'docker run -d -p 8080:80 --name my-app-container my-app-image'
            }
        }
    }

    post {
        always {
            echo 'Deployment completed!'
        }
        success {
            echo 'Deployment succeeded!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}

