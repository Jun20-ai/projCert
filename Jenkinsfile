pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Jun20-ai/projCert.git'
            }
        }
        stage('Build') {
            steps {
                dir('') { // No need to change directory if pom.xml is in the root
                    sh 'mvn clean install'
                }
            }
        }
        stage('Test') {
            steps {
                // Add your test steps here
            }
        }
        stage('Post-build') {
            steps {
                // Add post-build steps here
            }
        }
    }
}

