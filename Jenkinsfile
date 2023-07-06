pipeline {
    agent any 
    tools {
        maven 'maven-3.9.3' 
        jdk 'jdk8'
    }
    stages {
        stage('Stage 1') {
            steps {
                sh 'mvnw spring-boot:build-image'
            }
        }
    }
}