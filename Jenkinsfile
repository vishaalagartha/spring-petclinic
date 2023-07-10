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
                sh "./mvnw clean verify sonar:sonar -Dsonar.projectKey=spring-petclinic -Dsonar.projectName='spring-petclinic' -Dsonar.host.url=http://192.168.1.187:9000 -Dsonar.token=sqp_7baa5124e6d93c2ffe69140a2c3d6cbce502bd6f"
            }
        } 
    }
}