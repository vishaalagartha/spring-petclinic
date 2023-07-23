FROM maven:3.8.3-openjdk-17
COPY wait-for-it.sh wait-for-it.sh 
RUN chmod +x wait-for-it.sh
ENTRYPOINT ["./wait-for-it.sh" , "localhost:8080" , "--strict" , "--timeout=3000" , "--" , "echo", "We're up and running!"]
