pipeline {
    agent {
        docker {
            image 'maven:3.9.3-eclipse-temurin-11' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('Stage 1') {
            steps {
                sh 'mvnw spring-boot:build-image'
            }
        }
    }
}