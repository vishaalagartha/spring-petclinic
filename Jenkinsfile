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
                sh "./mvnw clean verify sonar:sonar -Dsonar.projectKey=spring-petclinic -Dsonar.projectName='spring-petclinic' -Dsonar.host.url=http://sonarqube:9000 -Dsonar.token=sqa_a66c9d501413340a906f77179e00294b5ef93ed7"
            }
        } 
        stage('Test webhook') {
            steps {
                echo "My webhook worked!"
            }
        }
    }
}