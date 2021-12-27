FROM maven:3-openjdk-8 as test
WORKDIR /hi
COPY . /hi
RUN mvn clean package

FROM tomcat
COPY --from=test /hi/target/*.war /usr/local/tomcat/webapps
