#
# WSO2 Enterprise Service Bus 5.0.0
#
FROM java:8
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://dist.wso2.org/products/enterprise-service-bus/5.0.0/wso2esb-5.0.0.zip && \
apt-get update && \
    apt-get install -y zip unzip && \
    apt-get clean && \
    unzip /opt/wso2esb-5.0.0.zip -d /opt && \
    rm /opt/wso2esb-5.0.0.zip

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
EXPOSE 9443 9763 8280 8243 9999 11111
ENTRYPOINT ["/opt/wso2esb-5.0.0/bin/wso2server.sh"]
