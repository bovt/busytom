FROM tomcat
EXPOSE 8080
RUN apt-get update
RUN apt-get install -y maven
RUN mkdir /tmp/busytom-g1; \cd /tmp/busytom-g1 ; \git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git ;\cd boxfuse-sample-java-war-hello;\mvn package
RUN cp /tmp/busytom-g1/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
