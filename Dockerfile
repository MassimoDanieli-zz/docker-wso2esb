#
# WSO2 Enterprise Service Bus 4.8.1
#
FROM java:7
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://dist.wso2.org/products/enterprise-service-bus/4.8.1/wso2esb-4.8.1.zip && \
apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2esb-4.8.1.zip -d /opt && \
    wget -P /opt/wso2esb-4.8.1/repository/components/lib/ http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.36/mysql-connector-java-5.1.36.jar &&\
    rm /opt/wso2esb-4.8.1.zip

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 9443 9763 8280 8243
CMD ["/opt/wso2esb-4.8.1/bin/wso2server.sh"]
