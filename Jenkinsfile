pipeline {
    agent any
    stages {
        stage('Build package') {
            steps {
                sh './mvnw package'
            }
        }
        stage('SonarQube Analysis') {
            tools {
                sonarQube 'SonarQube Scanner 4.8'
            }
            steps {
              withSonarQubeEnv('SonarQube Scanner') {
                sh 'mvn clean package sonar:sonar'
              }
            }
        } 
    }
}