FROM jamesdbloom/docker-java8-maven
ADD pom.xml .
RUN mvn dependency:resolve
ADD src .
CMD ["mvn", "test"]