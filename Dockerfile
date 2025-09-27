# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Set biến môi trường
ENV TZ=Asia/Ho_Chi_Minh

# Xoá các ứng dụng mặc định (ROOT, docs, examples...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào Tomcat webapps (đổi tên WAR thành ROOT.war để chạy ở "/")
COPY target/web-ca-nhan.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]