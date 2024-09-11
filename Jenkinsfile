pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                dir('/var/lib/jenkins/workspace/PHP-app') {
                    sh 'mvn clean install'
                }
            }
        }
        // Add additional stages here if needed
    }
}

