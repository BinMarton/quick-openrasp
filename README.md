# quick-start
Start OpenRASP Cloud（Server Side） with one bash scirpt 
in 5 mins.
U can use this for quick build test and development enviroment.

## 一句话脚本启动OpenRASP Cloud（包含docker\dockercompose\es\mongo\mongoexpress）。
```
# 建议修改cloud.yaml内默认密码zhimakaimen
sh cloud-start.sh
```
启动后访问localhost:8080 openrasp/admin@123  

## 一句话脚本启动Apache Tomcat with OpenRASP Agent。
```
# 必须修改target.yaml内[OpenRASP Cloud后台配置获取]
sh target-start.sh
```

[参考资料 - OpenRASP官方文档](https://rasp.baidu.com/doc/install/panel.html)
