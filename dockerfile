FROM openjdk:8 
	EXPOSE 8080 
	ADD target/deplymentdemo.war deplymentdemo.war
	ENTRYPOINT ["java","-jar","/deplymentdemo.war"]
