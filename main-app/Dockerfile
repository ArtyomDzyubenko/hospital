FROM openjdk:11
RUN addgroup --system spring && adduser --system spring --ingroup spring
USER spring:spring
EXPOSE 8080
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} main-app.jar
ENTRYPOINT ["java", "-jar", "/main-app.jar"]