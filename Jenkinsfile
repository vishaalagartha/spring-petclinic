pipeline {
    agent any
    stages {
        stage('Build package') {
            steps {
                sh './mvnw package'
            }
        }
        stage('Run ansible playbook') {
            steps {
                sh 'ansible-playbook jenkins-container/playbook.yaml --tags info,copy,run'
            }
        }
        stage('Test webhook') {
            steps {
                echo "It worked!"
            }
        }
    }
}