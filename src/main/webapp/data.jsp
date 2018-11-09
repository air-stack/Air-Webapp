<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ten
  Date: 2018/11/9
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大气监测数据</title>
</head>
<body>

<div id="records">
    <div>共有 ${records.size()}</div>

    <%--@elvariable id="records" type="java.util.List"--%>
    <c:forEach items="${records}" var="record">
        <div class="record-object">
            <div class="record-item">
                ID:
                    ${record.id}
            </div>

            <div class="record-item">
                温度:
                    ${record.temperature}
            </div>

            <div class="record-item">
                CO2浓度:
                    ${record.co2}
            </div>

            <div class="record-item">
                SO2浓度:
                    ${record.so2}
            </div>

            <div class="record-item">
                记录时间:
                    ${record.recordTime}
            </div>

            <div class="record-item">
                记录设备:
                    ${record.recordImei}
            </div>

            <div class="record-item">
                更新时间:
                    ${record.updateTime}
            </div>
        </div>
    </c:forEach>
</div>

</body>

<style>
    body {
        height: 1000px;
        width: 1000px;
    }

    #records {
        height: 100%;
        width: 100%;
        float: left;
    }

    .record-object {
        height: auto;
        width: auto;
    }

    .record-item {
        color: blue;
    }
</style>

</html>
