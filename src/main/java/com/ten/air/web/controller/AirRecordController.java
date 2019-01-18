package com.ten.air.web.controller;

import com.ten.air.web.entity.AirRecord;
import com.ten.air.web.service.AirRecordService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Data.jsp获取数据的Controller控制器
 */
public class AirRecordController extends HttpServlet {

    private static final String URL = "/WEB-INF/view/data.jsp";

    private AirRecordService service = AirRecordService.getService();

    /**
     * 从数据库获取数据
     *
     * @param req all data
     * @mapping record.do
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    /**
     * TODO 可以结合data.jsp需要的数据从数据库进行获取，暂时没做这部分功能，前端数据直接使用mock
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取最新的数据
        AirRecord record = service.selectLast();
        System.out.println("Record:" + record);
        req.setAttribute("record", record);
        req.getRequestDispatcher(URL).forward(req, resp);
    }
}
