package com.ten.air.web.service;

/**
 * 用户登录逻辑处理
 */
public class UserService {
    private static final String NAME = "admin";
    private static final String PASSWORD = "123456";

    /**
     * 默认固定账号密码，可通过查询数据库实现登录功能
     */
    public boolean login(String name, String password) {
        return NAME.equals(name) && PASSWORD.equals(password);
    }
}
