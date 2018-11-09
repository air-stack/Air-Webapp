package com.ten.air.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Mysql数据库连接
 *
 * @author wshten
 * @date 2018/11/9
 */
public class JdbcConnection {
    private static Logger logger = LoggerFactory.getLogger(JdbcConnection.class);
    private static final String HOST = "111.230.244.153";
    private static final int PORT = 3306;
    private static final String DATABASE = "air";
    private static final String USER = "root";
    private static final String PASSWORD = "wangshihao";
    private static final String URL = String.format(
            "jdbc:mysql://%s:%d/%s" + "?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false",
            HOST, PORT, DATABASE);

    private JdbcConnection() {
        logger.error("JDBC init error");
        throw new AssertionError();
    }

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * 获取数据库连接
     *
     * @throws SQLException         连接数据库异常
     * @throws NullPointerException 连接关闭
     */
    public static Connection getConnection() throws SQLException {
        Connection c = DriverManager.getConnection(URL, USER, PASSWORD);
        if (c.isClosed()) {
            throw new IllegalAccessError("Connection is closed");
        }
        return c;
    }

    /**
     * 加载jdbc驱动测试
     *
     * @throws SQLException 获取连接失败
     */
    public static void main(String[] args) throws SQLException {
        Connection c = JdbcConnection.getConnection();
    }
}
