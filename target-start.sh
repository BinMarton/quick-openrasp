# download rasp-agent
curl -O rasp-java.tar.gz https://packages.baidu.com/app/openrasp/release/1.3.7/rasp-java.tar.gz -C ./init
# install rasp-agent
tar -xzvf ./init/rasp-java.tar.gz
# download target
mkdir -p ./tomcat/webapps

curl -o ./tomcat/webapps/CVE-2019-10173.war https://packages.baidu.com/app/openrasp/testcases/CVE-2019-10173.war
curl -o ./tomcat/webapps/CVE-2019-12384.war https://packages.baidu.com/app/openrasp/testcases/CVE-2019-12384.war
curl -o ./tomcat/webapps/S2-016.war https://packages.baidu.com/app/openrasp/testcases/S2-016.war
curl -o ./tomcat/webapps/fastjson-1.2.60.war https://packages.baidu.com/app/openrasp/testcases/fastjson-1.2.60.war
curl -o ./tomcat/webapps/fastjson.war https://packages.baidu.com/app/openrasp/testcases/fastjson.war
curl -o ./tomcat/webapps/spel.war https://packages.baidu.com/app/openrasp/testcases/spel.war
curl -o ./tomcat/webapps/vulns.war https://packages.baidu.com/app/openrasp/testcases/vulns.war
curl -o ./tomcat/webapps/wxpay-xxe.war https://packages.baidu.com/app/openrasp/testcases/wxpay-xxe.war

# start taget
docker compose -f target.yaml up -d