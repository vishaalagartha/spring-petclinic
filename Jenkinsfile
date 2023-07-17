pipeline {
    agent any
    environment {
        SONAR_TOKEN = sh(returnStdout: true, script: 'cat sonar_token.txt')
    }
    stages {
        stage('Build package') {
            steps {
                sh './mvnw package'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                sh "./mvnw clean verify sonar:sonar -Dsonar.projectKey=spring-petclinic -Dsonar.projectName='spring-petclinic' -Dsonar.host.url=http://sonarqube:9000 -Dsonar.token=${SONAR_TOKEN}"
            }
        } 
        stage('Test webhook') {
            steps {
                echo "It worked!"
            }
        }
    }
}