pipeline {
    agent any
    stages {
        stage('Build package') {
            steps {
                sh './mvnw package'
            }
        }
        stage('SonarQube Analysis') {
            steps {
              withSonarQubeEnv('SonarQube Scanner') {
                sh 'mvn clean package sonar:sonar'
              }
            }
        } 
    }
}