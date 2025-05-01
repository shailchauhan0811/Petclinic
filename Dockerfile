FROM tomcat:9.0-jdk8

# Remove default Tomcat apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy WAR to Tomcat
COPY target/petclinic.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Tomcat's default)
EXPOSE 8080

# Tomcat starts automatically - no ENTRYPOINT needed
