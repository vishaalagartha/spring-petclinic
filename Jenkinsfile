pipeline {
    agent any
    environment {
        SONAR_TOKEN = sh(returnStdout: true, script: "cat ${JENKINS_HOME}/sonar_token.txt")
    }
    stages {
        stage('Build package') {
            steps {
                sh './mvnw package'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                sh "./mvnw clean verify sonar:sonar -Dsonar.projectKey=spring-petclinic -Dsonar.projectName='spring-petclinic' -Dsonar.host.url=http://sonarqube:9000 -Dsonar.token=sqa_a77de3589fbb22c5f974d14cb14988bf5c04db70"
            }
        } 
        stage('Run ansible playbook') {
            steps {
                sh "cd ${WORKSPACE}/jenkins-container && ansible-playbook playbook.yaml --tags info,copy,run --private-key=${JENKINS_HOME}/devops.pem"
            }
        }
        stage('Test webhook') {
            steps {
                echo "It worked!"
            }
        }
    }
}