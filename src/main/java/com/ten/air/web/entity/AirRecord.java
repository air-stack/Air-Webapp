package com.ten.air.web.entity;

/**
 * Atmospheric monitoring record 大气监测记录
 */
public class AirRecord {
    /**
     * Primary Key ID
     */
    private Integer id;
    /**
     * Record Imei 记录设备
     */
    private String imei;
    /**
     * Temperature 温度
     */
    private String temperature;
    /**
     * PM 2.5 Concentration
     */
    private String pm25;
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
     * Update Time 更新时间
     */
    private String updateTime;
    /**
     * is deleted 0:n 1:y
     */
    private Integer isDeleted;

    public AirRecord() {
    }

    public AirRecord(Integer id, String temperature, String co2, String so2, String recordTime, String imei, String updateTime) {
        this.id = id;
        this.temperature = temperature;
        this.co2 = co2;
        this.so2 = so2;
        this.recordTime = recordTime;
        this.imei = imei;
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "AirRecord{" +
                "id=" + id +
                ", imei='" + imei + '\'' +
                ", temperature='" + temperature + '\'' +
                ", pm25='" + pm25 + '\'' +
                ", co2='" + co2 + '\'' +
                ", so2='" + so2 + '\'' +
                ", recordTime='" + recordTime + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", isDeleted=" + isDeleted +
                '}';
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }

    public String getPm25() {
        return pm25;
    }

    public void setPm25(String pm25) {
        this.pm25 = pm25;
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

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }
}
