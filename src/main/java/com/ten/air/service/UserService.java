package com.ten.air.service;

/**
 * 用户登录逻辑处理
 *
 * @author wshten
 * @date 2018/11/9
 */
public class UserService {
    private static final String NAME = "admin";
    private static final String PASSWORD = "123456";

    public boolean login(String name, String password) {
        return NAME.equals(name) && PASSWORD.equals(password);
    }
}
