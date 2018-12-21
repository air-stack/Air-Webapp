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

    private static final String URL = "/data.jsp";

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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AirRecord> records = service.getAllRecord();
        System.out.println("Records:" + records);
        req.setAttribute("records", records);
        req.getRequestDispatcher(URL).forward(req, resp);
    }
}
