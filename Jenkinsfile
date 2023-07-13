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
                sh "./mvnw clean verify sonar:sonar -Dsonar.projectKey=spring-petclinic -Dsonar.projectName='spring-petclinic' -Dsonar.host.url=http://sonarqube:9000 -Dsonar.token=sqa_a77de3589fbb22c5f974d14cb14988bf5c04db70"
            }
        } 
        stage('Test webhook') {
            steps {
                echo "My webhook worked!"
            }
        }
    }
}