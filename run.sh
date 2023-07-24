docker build -t jenkins-image jenkins-container/

docker run -d -p 8080:8080 -p 50022:22 -p 50000:50000 --name jenkins jenkins-image

sleep 10

curl -O http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 create-job spring-petclinic < jenkins-container/spring-petclinic.xml