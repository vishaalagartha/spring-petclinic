pipeline {
    agent any
    stages {
        stage('Build package') {
            steps {
                sh './mvnw package'
            }
        }
        stage('Run application') {
            steps {
                sh 'java -jar target/*.jar'
            }
        }
    }
}