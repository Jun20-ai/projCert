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
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the Git repository
                checkout scm
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t my-app-image .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Stop and remove the existing Docker container if it exists
                    sh '''
                    docker stop my-app-container || true
                    docker rm my-app-container || true
                    '''

                    // Run a new Docker container with port 8081
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

