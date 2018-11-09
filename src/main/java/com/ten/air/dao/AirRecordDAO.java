package com.ten.air.dao;

import com.ten.air.entity.AirRecord;
import com.ten.air.util.JdbcConnection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * AirRecord数据库访问
 */
public class AirRecordDAO {
    private static final Logger logger = LoggerFactory.getLogger(AirRecordDAO.class);
    private static final AirRecordDAO DAO = new AirRecordDAO();

    public static AirRecordDAO getDao() {
        return DAO;
    }

    private static final String SELECT_ALL = "SELECT * FROM air_record";

    /**
     * 获取所有数据
     */
    public List<AirRecord> getAllRecord() throws SQLException {
        Connection c = JdbcConnection.getConnection();
        PreparedStatement p = c.prepareStatement(SELECT_ALL);
        ResultSet result = p.executeQuery();

        List<AirRecord> records = new ArrayList<>();
        while (result.next()) {
            AirRecord record = new AirRecord();

            record.setId(Integer.valueOf(result.getString("id")));
            record.setTemperature(result.getString("temperature"));
            record.setCo2(result.getString("co2"));
            record.setSo2(result.getString("so2"));
            record.setRecordTime(result.getString("record_time"));
            record.setRecordImei(result.getString("record_imei"));
            record.setUpdateTime(result.getString("update_time"));

            logger.info(String.valueOf(record));
            records.add(record);
        }
        return records;
    }
}
