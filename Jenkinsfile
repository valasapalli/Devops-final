pipeline {
    agent any

    tools {
        maven 'Maven'  // Assumes Maven is pre-configured in Jenkins
    }

    environment {
        DOCKER_IMAGE = 'java-app:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/valasapalli/Devops-final.git'  // Replace <your-repo> with your actual repository URL
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'  // Maven build command
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'  // Docker build command
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker run -d -p 8080:8080 $DOCKER_IMAGE'  // Docker run command to expose app on port 8080
            }
        }
    }
}
