package com.ten.air.service;

import com.ten.air.dao.AirRecordDAO;
import com.ten.air.entity.AirRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 * AirRecord业务逻辑处理
 *
 * @author wshten
 * @date 2018/11/9
 */
public class AirRecordService {
    private static final Logger logger = LoggerFactory.getLogger(AirRecordService.class);
    private static final AirRecordService SERVICE = new AirRecordService();

    public static AirRecordService getService() {
        return SERVICE;
    }

    private AirRecordDAO dao = AirRecordDAO.getDao();

    public List<AirRecord> getAllRecord() {
        try {
            return dao.getAllRecord();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
