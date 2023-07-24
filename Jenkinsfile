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
                sh "cd ${WORKSPACE}/jenkins_container && ansible-playbook playbook.yaml --tags info,copy,run --private-key=${JENKINS_HOME}/devops.pem"
            }
        }
        stage('Test webhook') {
            steps {
                echo "It worked!"
            }
        }
    }
}