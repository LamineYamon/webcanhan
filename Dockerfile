# Multi-stage build
# Stage 1: Build the application
FROM openjdk:17-jdk-slim AS build

# Install Maven
RUN apt-get update && \
    apt-get install -y wget && \
    wget -O /tmp/maven.tar.gz https://archive.apache.org/dist/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz && \
    tar -xzf /tmp/maven.tar.gz -C /opt && \
    ln -s /opt/apache-maven-3.8.6 /opt/maven && \
    rm /tmp/maven.tar.gz && \
    apt-get clean

# Set Maven environment
ENV MAVEN_HOME=/opt/maven
ENV PATH=$MAVEN_HOME/bin:$PATH

# Set working directory
WORKDIR /app

# Copy pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code and build
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Runtime
FROM tomcat:9.0-jdk17

# Set biến môi trường
ENV TZ=Asia/Ho_Chi_Minh

# Xoá các ứng dụng mặc định (ROOT, docs, examples...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ build stage vào Tomcat webapps
COPY --from=build /app/target/web-ca-nhan.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]