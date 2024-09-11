pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/jun20-ai/projCert.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Post-build') {
            steps {
                echo 'CI Pipeline completed successfully!'
            }
        }
    }
}
