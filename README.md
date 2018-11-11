# Air Webapp

> 大气环境检测系统的WEB站点

## 技术栈

jsp + servlet + jdbc + mysql 

> 登录账号:admin 登录密码:123456

## 数据获取(物联网)

通过物联网设备采集数据，通过WIFI模块发送HTTP数据包到WEB_SERVER，解码数据包并将数据存储到数据库

WEB_SERVER项目详见：[https://github.com/kevinten10/Air-Server]

## 使用

```txt
# 1. 下载项目到本地
# git clone https://github.com/kevinten10/Air-Webapp.git

# 2. 打开项目(推荐使用IDEA)

# 3. 使用sql文件创建项目MySQL数据库 
# src\main\java\com\ten\air\constant\AirRecord.sql

# 4. 修改MySQL配置信息
# src\main\java\com\ten\air\constant\MysqlConfig.java

# 5. 配置Tomcat，启动项目

```

## DEMO

![登录](images/登录.png)

![数据](images/数据展示.png)