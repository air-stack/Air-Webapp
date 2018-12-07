package com.ten.air.web.constant;

/**
 * FIXME 修改数据库配置
 */
public class MysqlConfig {
    // Mysql数据库主机IP地址
    private static final String HOST = "127.0.0.1";
    // 数据库端口，默认3306
    private static final int PORT = 3306;
    // 数据库名称
    private static final String DATABASE = "air";

    // 数据库登录用户名
    public static final String USER = "root";
    // 数据库登录密码
    public static final String PASSWORD = "123456";
    // 数据库URL
    public static final String URL = String.format(
            "jdbc:mysql://%s:%d/%s" + "?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false",
            HOST, PORT, DATABASE);

}