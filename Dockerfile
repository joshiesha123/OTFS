FROM openjdk:11
EXPOSE 8089
ADD ./onlinePrivateTutorFinder-0.0.1-SNAPSHOT.jar onlinePrivateTutorFinder-0.0.1-SNAPSHOT.jar 
ENTRYPOINT ["java","-jar","/onlinePrivateTutorFinder-0.0.1-SNAPSHOT.jar"]