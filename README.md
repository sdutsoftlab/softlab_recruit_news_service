# 后端



环境: jdk1.8+、  mysql5.7+

application.properties  为配置文件  里面可以修改端口信息

```
# 服务端口
server.port=8082
# 数据库信息
spring.datasource.url=jdbc:mysql://127.0.0.1:3306/softlab?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Shanghai
spring.datasource.username=
spring.datasource.password=
```



### 部署

保证xxx.jar  和 application.properties  同一个路径下。

进入上面的路径 


**一定不要使用service 创建守护进程，有坑**
使用如下方式：
```
nohup java -jar sdutsoftlab.jar >sdutsoftlab.log 2>&1 &
```

