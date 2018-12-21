package com.ten.air.web.entity;

/**
 * Atmospheric monitoring record 大气监测记录
 * <p>
 * 需与Protocol中的AirRecord字段保持同步，但若直接使用Protocol中的类，则会导致CNF异常
 */
public class AirRecord {
    /**
     * Primary Key ID
     */
    private Integer id;
    /**
     * Device Source 设备来源 0:真机 1:虚拟
     */
    private String source;
    /**
     * Record Imei 记录设备
     */
    private String imei;
    /**
     * Temperature 温度
     */
    private String temperature;
    /**
     * Humidity 湿度
     */
    private String humidity;
    /**
     * PM 2.5 Concentration PM25浓度
     */
    private String pm25;
    /**
     * Undefined data 待定义数据
     */
    private String undefinedData;
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

    @Override
    public String toString() {
        return "AirRecord{" +
                "id=" + id +
                ", source='" + source + '\'' +
                ", imei='" + imei + '\'' +
                ", temperature='" + temperature + '\'' +
                ", humidity='" + humidity + '\'' +
                ", pm25='" + pm25 + '\'' +
                ", undefinedData='" + undefinedData + '\'' +
                ", recordTime='" + recordTime + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", isDeleted=" + isDeleted +
                '}';
    }

    public AirRecord() {
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
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

    public String getHumidity() {
        return humidity;
    }

    public void setHumidity(String humidity) {
        this.humidity = humidity;
    }

    public String getUndefinedData() {
        return undefinedData;
    }

    public void setUndefinedData(String undefinedData) {
        this.undefinedData = undefinedData;
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
