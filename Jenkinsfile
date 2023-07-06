pipeline {
    agent any 
    tools {
        maven 'Maven 3.9.3'
        jdk 'Java17'
    } 
    stages {
        stage('Stage 1') {
            steps {
                sh 'mvnw spring-boot:build-image'
            }
        }
    }
}