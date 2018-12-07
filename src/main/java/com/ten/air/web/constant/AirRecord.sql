-- auto Generated on 2018-10-26 22:53:57 
-- DROP TABLE IF EXISTS `air_record`;
CREATE DATABASE air;

USE air;

CREATE TABLE air_record(
    `id` INTEGER(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
    `temperature` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Temperature �¶�',
    `co2` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Carbon Dioxide Concentration CO2Ũ��',
    `so2` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Sulful Dioxide Concentration SO2Ũ��',
    `record_time` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Record Time ��¼ʱ��',
    `record_imei` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Record Imei ��¼�豸',
    `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updateTime',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'air_record';
