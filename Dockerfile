FROM jamesdbloom/docker-java8-maven as builder
WORKDIR /tmp
ADD pom.xml .
RUN mvn dependency:resolve
ADD src ./src

FROM builder as packager
RUN mvn clean package -DskipTests

FROM java:8-alpine
COPY --from=packager /tmp/target/*with-dependencies.jar ./app.jar
CMD java -jar app.jar