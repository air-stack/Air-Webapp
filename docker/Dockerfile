# Docker部署Javaweb(war) air-webapp
# 1. Copy air.war to current directory
# 2. Build with: docker build -t air .
# 3. Run with: docker run -d -p 9000:8080 air

FROM tomcat:8.0

MAINTAINER kevinten <wshten@gmail.com>

ADD air.war /usr/local/tomcat/webapps/

EXPOSE 8080
