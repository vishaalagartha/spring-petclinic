pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                sh 'mvnw spring-boot:build-image'
            }
        }
    }
}