FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY ./*.war /usr/local/tomcat/webapps
COPY --from=build /webapp/target/webapp.war /usr/local/tomcat/webapps

