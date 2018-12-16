<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大气监测数据</title>
</head>
<body>

<div id="records">
    <div>共有 ${records.size()}</div>

    <%--@elvariable id="records" type="java.util.List"--%>
    <table>
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
                <td class="record-item">
                        ${record.id}
                </td>

                <td class="record-item">
                        ${record.imei}
                </td>

                <td class="record-item">
                        ${record.temperature}
                </td>

                <td class="record-item">
                        ${record.pm25}
                </td>

                <td class="record-item">
                        ${record.co2}
                </td>

                <td class="record-item">
                        ${record.so2}
                </td>

                <td class="record-item">
                        ${record.recordTime}
                </td>

                <td class="record-item">
                        ${record.updateTime}
                </td>

                <td class="record-item">
                        ${record.isDeleted}
                </td>
            </tr>
        </c:forEach>
    </table>
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
