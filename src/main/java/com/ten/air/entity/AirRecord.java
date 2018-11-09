package com.ten.air.entity;

/**
 * Atmospheric monitoring record 大气监测记录
 */
public class AirRecord {
    /**
     * Primary Key ID
     */
    private Integer id;
    /**
     * Temperature 温度
     */
    private String temperature;
    /**
     * Carbon Dioxide Concentration CO2浓度
     */
    private String co2;
    /**
     * Sulful Dioxide Concentration SO2浓度
     */
    private String so2;
    /**
     * Record Time 记录时间
     */
    private String recordTime;
    /**
     * Record Imei 记录设备
     */
    private String recordImei;
    /**
     * Update Time 更新时间
     */
    private String updateTime;

    public AirRecord() {
    }

    public AirRecord(Integer id, String temperature, String co2, String so2, String recordTime, String recordImei, String updateTime) {
        this.id = id;
        this.temperature = temperature;
        this.co2 = co2;
        this.so2 = so2;
        this.recordTime = recordTime;
        this.recordImei = recordImei;
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "AirRecord@{" +
                "id:" + id + "," +
                "temperature:" + temperature + "," +
                "co2:" + co2 + "," +
                "so2:" + so2 + "," +
                "recordTime:" + recordTime + "," +
                "recordImei:" + recordImei + "," +
                "updateTime:" + updateTime +
                "}";
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getCo2() {
        return co2;
    }

    public void setCo2(String co2) {
        this.co2 = co2;
    }

    public String getSo2() {
        return so2;
    }

    public void setSo2(String so2) {
        this.so2 = so2;
    }

    public String getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(String recordTime) {
        this.recordTime = recordTime;
    }

    public String getRecordImei() {
        return recordImei;
    }

    public void setRecordImei(String recordImei) {
        this.recordImei = recordImei;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }
}
