package com.ten.air.web.controller;

import com.ten.air.web.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用户登录验证
 *
 * @author wshten
 * @date 2018/11/9
 */
public class UserController extends HttpServlet {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private volatile UserService service = new UserService();

    /**
     * 登录成功 -> 发送record.do请求, 跳转到data.jsp
     */
    private static final String SUCCESS = "/record.do";
    /**
     * 登录失败 -> 跳转到登录界面index.jsp
     */
    private static final String FAIL = "/index.jsp";

    /**
     * 登录校验
     *
     * @param req [name, password]
     * @mapping /login.do
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("Username");
        String password = req.getParameter("Password");
        logger.info("Recieve New Login Request:" + name + "," + password);

        // 登录校验
        boolean success = service.login(name, password);

        if (success) {
            logger.info("User Login Success:" + name + "," + password);
            req.getRequestDispatcher(SUCCESS).forward(req, resp);
        } else {
            logger.info("User Login Failure:" + name + "," + password);
            req.setAttribute("errormsg", "登录失败");
            req.getRequestDispatcher(FAIL).forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
