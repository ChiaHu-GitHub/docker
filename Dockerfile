FROM java
MAINTAINER jack
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget http://ftp.tc.edu.tw/pub/Apache/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz

RUN tar zxvf 5.41/bin/apache-tomcat-8.5.41.tar.gz

CMD ["/apache-tomcat-8.5.41/bin/catalina.sh", "run"]

EXPOSE 8080
