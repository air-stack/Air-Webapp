# Air Webapp

> 大气环境检测系统的WEB数据展示网站，只有简单的登录+展示两个界面，后端采用Servlet+Jdbc搭建，方便理解和掌握。

## 技术栈

jsp + servlet + jdbc + mysql 

> 登录账号:admin 登录密码:123456

## 数据获取(物联网)

通过 物联网设备 / 数据模拟服务 采集数据，通过WIFI模块发送TCP数据包到TCP_SERVER，解码数据包并将数据通过HTTP发送到数据交互后台BACK服务，进行数据存储。

然后Webapp通过Jdbc访问MySQL数据库，将数据展示到WEB网站。

项目详见：[https://github.com/kevinten10/Air]

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

### 异常处理

若启动后遇到404错误，可能是jstl导入问题，将pom.xml中的三个jstl相关包注释掉，刷新，然后再取消注释，刷新。即可。

## DEMO

![登录](images/登录.png)

![数据](images/数据展示.png)