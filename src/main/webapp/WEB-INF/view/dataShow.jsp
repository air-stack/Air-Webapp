<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大气监测数据</title>
</head>
<body>
<%
    // 页面每隔3秒自动刷新一遍
    response.setHeader("refresh", "3;URL=record.do");
%>
<div id="record">

    <div>实时数据展示：</div>

    <%--@elvariable id="record" type="java.util.List"--%>
    <table border="1" cellpadding="0" cellspacing="0" style="table-layout: auto">
        <tr>
            <th>设备号</th>
            <th>当前温度</th>
            <th>当前湿度</th>
            <th>当前PM25</th>
        </tr>


        <tr class="record-object">

            <td class="record-item" align="center">
                ${record.imei}
            </td>

            <td class="record-item" align="center">
                ${record.temperature} ℃
            </td>

            <td class="record-item" align="center">
                ${record.humidity} %
            </td>

            <td class="record-item" align="center">
                ${record.pm25} ppm
            </td>

        </tr>
    </table>
</div>

</body>

<style>
    body {
        height: 100%;
        width: 100%;
    }

    #record {
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
