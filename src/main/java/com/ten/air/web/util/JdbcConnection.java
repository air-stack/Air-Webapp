package com.ten.air.web.util;

import com.ten.air.web.constant.MysqlConfig;
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

    private JdbcConnection() {
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
        Connection c = DriverManager.getConnection(MysqlConfig.URL, MysqlConfig.USER, MysqlConfig.PASSWORD);
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
