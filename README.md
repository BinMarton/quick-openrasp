# quick-start
Start OpenRASP Cloud（Server Side） with one bash scirpt in 5 mins.  
Start OpenRASP Agent as attack target with one bash scirpt in 3 mins.  
U can quick build openrasp test and development enviroment.

## 一句话脚本启动OpenRASP Cloud
包含docker\dockercompose\es\mongo\mongoexpress
```
# 建议修改cloud.yaml + init/app.conf + init/mongo.js内默认密码zhimakaimen
sh cloud-start.sh
```
启动后访问：
localhost openrasp/admin@123  

## 一句话脚本启动OpenRASP Agent
包含tomcat\vul apps\rasp-agent
```
# 必须修改target.dockerfile内[OpenRASP Cloud后台配置获取]
sh target-start.sh
```
启动后访问：
- localhost:58080/CVE-2019-10173
- localhost:58080/CVE-2019-12384
- localhost:58080/S2-016
- localhost:58080/fastjson-1.2.60
- localhost:58080/fastjson
- localhost:58080/spel
- localhost:58080/vulns
- localhost:58080/wxpay-xxe

[参考资料 - OpenRASP官方文档](https://rasp.baidu.com/doc/install/panel.html)
