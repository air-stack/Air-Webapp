<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大气监测数据</title>
</head>
<body>

<div id="records">
    <div>共有 ${records.size()} 条记录</div>

    <%--@elvariable id="records" type="java.util.List"--%>
    <table border="1" cellpadding="0" cellspacing="0" style="table-layout: auto">
        <tr>
            <th>ID</th>
            <th>设备号</th>
            <th>温度</th>
            <th>PM2.5</th>
            <th>CO2浓度</th>
            <th>SO2浓度</th>
            <th>记录时间</th>
            <th>更新时间</th>
            <th>过期标记</th>
        </tr>

        <c:forEach items="${records}" var="record">
            <tr class="record-object">
                <td class="record-item" align="center">
                        ${record.id}
                </td>

                <td class="record-item" align="center">
                        ${record.imei}
                </td>

                <td class="record-item" align="center">
                        ${record.temperature} ℃
                </td>

                <td class="record-item" align="center">
                        ${record.pm25} ppm
                </td>

                <td class="record-item" align="center">
                        ${record.co2} ppm
                </td>

                <td class="record-item" align="center">
                        ${record.so2} ppm
                </td>

                <td class="record-item" align="center">
                        ${record.updateTime}
                </td>

                <td class="record-item" align="center">
                        ${record.updateTime}
                </td>

                <td class="record-item" align="center">
                    <c:if test="${record.isDeleted==0}">
                        记录正常
                    </c:if>
                    <c:if test="${record.isDeleted==1}">
                        记录过期
                    </c:if>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>

<style>
    body {
        height: 100%;
        width: 100%;
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
        width: 10%;
    }
</style>

</html>
