FROM tomcat:8.5.92

# down load target vul apps
WORKDIR /usr/local/tomcat/webapps/
ADD https://packages.baidu.com/app/openrasp/testcases/CVE-2019-10173.war  CVE-2019-10173.war
ADD https://packages.baidu.com/app/openrasp/testcases/CVE-2019-12384.war  CVE-2019-12384.war
ADD https://packages.baidu.com/app/openrasp/testcases/S2-016.war          S2-016.war
ADD https://packages.baidu.com/app/openrasp/testcases/fastjson-1.2.60.war fastjson-1.2.60.war
ADD https://packages.baidu.com/app/openrasp/testcases/fastjson.war        fastjson.war
ADD https://packages.baidu.com/app/openrasp/testcases/spel.war            spel.war
ADD https://packages.baidu.com/app/openrasp/testcases/vulns.war           vulns.war
ADD https://packages.baidu.com/app/openrasp/testcases/wxpay-xxe.war       wxpay-xxe.war

# download rasp agent
WORKDIR /usr/local/tomcat/
ADD https://packages.baidu.com/app/openrasp/release/1.3.7/rasp-java.tar.gz rasp-java.tar.gz

# install rasp agent for tomcat
RUN tar -xzvf rasp-java.tar.gz \
    && rm -rf rasp-java.tar.gz \
    && mv rasp-2023-03-31 rasp \
    && cd rasp \
    && java -jar RaspInstall.jar -install /usr/local/tomcat -backendurl http://yuruo.cn -appsecret [OpenRASP Cloud后台配置获取] -appid [OpenRASP Cloud后台配置获取]
