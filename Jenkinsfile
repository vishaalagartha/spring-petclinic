pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                ./mvnw spring-boot:build-image
            }
        }
    }
}