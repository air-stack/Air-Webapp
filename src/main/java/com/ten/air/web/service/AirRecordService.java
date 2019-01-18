package com.ten.air.web.service;

import com.ten.air.web.entity.AirRecord;
import com.ten.air.web.dao.AirRecordDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * AirRecord业务逻辑处理
 */
public class AirRecordService {
    private static final AirRecordService SERVICE = new AirRecordService();

    public static AirRecordService getService() {
        return SERVICE;
    }

    private AirRecordDAO dao = AirRecordDAO.getDao();

    /**
     * 获取所有数据（最近二十条）
     */
    public List<AirRecord> getAllRecord() {
        try {
            return dao.getAllRecord();
        } catch (SQLException e) {
            e.printStackTrace();
            return new ArrayList<>(1);
        }
    }

    /**
     * 获取最新数据
     */
    public AirRecord selectLast() {
        List<AirRecord> result;
        try {
            result = dao.selectLast();
        } catch (SQLException e) {
            e.printStackTrace();
            return new AirRecord();
        }

        AirRecord last = new AirRecord();
        // 记录不存在
        if (result.size() < 1) {
            last.setImei("记录不存在");
            last.setTemperature("0.0");
            last.setHumidity("0.0");
            last.setPm25("0");
            return last;
        }

        last.setImei(result.get(0).getImei());
        result.forEach((item) -> {
            if (!"0.0".equals(item.getTemperature())) {
                last.setTemperature(item.getTemperature());
            }
            if (!"0.0".equals(item.getHumidity())) {
                last.setHumidity(item.getHumidity());
            }
            if (!"0".equals(item.getPm25())) {
                last.setPm25(item.getPm25());
            }
        });
        return last;
    }
}
