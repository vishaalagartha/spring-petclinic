docker compose up --detach

sleep 10

curl -O http://localhost:8080/jnlpJars/jenkins-cli.jar

sleep 5

java -jar jenkins-cli.jar -s http://localhost:8080 create-job spring-petclinic < jenkins-container/spring-petclinic.xml

python3 jenkins-container/setup_sonar.py

docker cp jenkins-container/hudson.plugins.sonar.SonarGlobalConfiguration.xml jenkins:/var/jenkins_home
docker cp jenkins-container/sonar_token.txt jenkins:/var/jenkins_home

docker stop jenkins
docker start jenkins
