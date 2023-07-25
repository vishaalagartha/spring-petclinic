docker compose up --detach

sleep 10

curl -O http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 create-job spring-petclinic < jenkins-container/spring-petclinic.xml

python3 jenkins_container/setup_sonar.py

docker cp jenkins_container/hudson.plugins.sonar.SonarGlobalConfiguration.xml jenkins:/var/jenkins_home
docker cp jenkins_container/sonar_token.txt jenkins:/var/jenkins_home

docker stop jenkins
docker start jenkins
