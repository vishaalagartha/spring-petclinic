pipeline {
    agent any
    stages {
        stage('Build package') {
            steps {
                sh './mvnw package'
            }
        }
        stage('Test webhook') {
            steps {
                echo "It worked!"
            }
        }
    }
}