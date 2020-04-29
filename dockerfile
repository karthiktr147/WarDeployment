FROM openjdk:8 
	EXPOSE 8080 
	ADD target/deplymentdemo-0.0.1-SNAPSHOT-war-with-dependencies.jar deplymentdemo-0.0.1-SNAPSHOT-jar-with-dependencies.war
	ENTRYPOINT ["java","-war","/deplymentdemo-0.0.1-SNAPSHOT-jar-with-dependencies.war"]
