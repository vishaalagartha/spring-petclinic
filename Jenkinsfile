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
                sh "./mvnw clean verify sonar:sonar -Dsonar.projectKey=spring-petclinic -Dsonar.projectName='spring-petclinic' -Dsonar.host.url=http://sonarqube:9000 -Dsonar.token=sqa_f7314e80fb3dc5761baf00ddfbe838e4daec1b0f"
            }
        } 
    }
}