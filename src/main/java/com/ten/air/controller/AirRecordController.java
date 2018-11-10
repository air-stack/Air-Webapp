package com.ten.air.controller;

import com.ten.air.entity.AirRecord;
import com.ten.air.service.AirRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Controller控制器
 *
 * @author wshten
 * @date 2018/11/9
 */
public class AirRecordController extends HttpServlet {
    private static final Logger logger = LoggerFactory.getLogger(AirRecordController.class);
    private AirRecordService service = AirRecordService.getService();

    private static final String URL = "/data.jsp";

    /**
     * 获取所有数据
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
        logger.info("Records:" + records);
        // 执行转发
        req.setAttribute("records", records);
        req.getRequestDispatcher(URL).forward(req, resp);
    }
}
