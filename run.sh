docker compose up --detach

curl -O http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 create-job spring-petclinic < jenkins-container/spring-petclinic.xml