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
                script {
                    sh 'docker build -t my-app-image .'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'docker stop my-app-container || true'
                    sh 'docker rm my-app-container || true'
                    sh 'docker run -d -p 8081:80 --name my-app-container my-app-image'
                }
            }
        }
    }
    post {
        always {
            echo 'Deployment completed!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}

