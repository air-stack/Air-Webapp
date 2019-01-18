<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Air-大气质量监测系统</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="http://www.shieldui.com/shared/components/latest/css/shieldui-all.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/css/data.css">

    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mockData.js"></script>
</head>

<body>

<!--标题-->
<div class="section">
    <div style="min-width: 453px;">
        <div>
            <a id="logo" href="${pageContext.request.contextPath}" class="pull-left">
                <img src="${pageContext.request.contextPath}/static/image/logo.png" alt="Home"
                     style="min-width: 100px; height: 46px;"/>
            </a>
        </div>
    </div>
</div>

<!--内容-->
<div class="container">
    <br/>

    <!--第一栏-->
    <div class="row">

        <!--设备信息-->
        <div class="col-sm-6 col-lg-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="text-center">设备信息<span class="glyphicon glyphicon-user pull-right"></span></h4>
                </div>
                <div class="panel-body text-center">
                    <p class="lead">
                        <%--<!--TODO ${device.alias}-->--%>
                        <strong>大气监测设备1</strong>
                    </p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item liitem">
                        <%--<!--TODO ${device.imei}-->--%>
                        <strong>IMEI:</strong>
                        <span class="pull-right">123456</span>
                    </li>
                    <li class="list-group-item liitem">
                        <%--<!--TODO ${device.communityID}-->--%>
                        <strong>社区名称:</strong>
                        <span class="pull-right">江南大学</span>
                    </li>
                    <li class="list-group-item liitem">
                        <%--<!--TODO ${device.deviceStatus}-->--%>
                        <strong>设备状态:</strong>
                        <span class="pull-right">在线</span>
                    </li>
                    <li class="list-group-item liitem">
                        <%--<!--TODO ${device.bjCreateTime}-->--%>
                        <strong>激活时间:</strong>
                        <span class="pull-right">2019-01-01</span>
                    </li>
                </ul>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-4 col-sm-3 col-md-4 col-lg-2">
                        </div>
                        <!--二维码-->
                        <div class="col-xs-2 col-sm-4 col-md-4 col-lg-4" id="qr1">
                        </div>
                        <div class="col-xs-6 col-sm-5 col-md-4 col-lg-6">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--实时数据-->
        <div class="col-sm-6 col-lg-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="text-center">实时监测数据<span class="glyphicon glyphicon-saved pull-right"></span></h4>
                </div>
                <div class="panel-body text-center">
                    <p class="lead">
                        <strong>实时监测数据</strong>
                    </p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item liitem">
                        <div class="skillLineDefault">
                            <div class="skill pull-left text-center">温度</div>
                            <div class="rating">${record.temperature}℃</div>
                        </div>
                    </li>
                    <li class="list-group-item liitem">
                        <div class="skillLineDefault">
                            <div class="skill pull-left text-center">湿度</div>
                            <div class="rating">${record.humidity}%</div>
                        </div>
                    </li>
                    <li class="list-group-item liitem">
                        <div class="skillLineDefault">
                            <div class="skill pull-left text-center">PM2.5</div>
                            <div class="rating">${record.pm25}ppm</div>
                        </div>
                    </li>
                    <li class="list-group-item liitem">
                        <div class="skillLineDefault">
                            <div class="skill pull-left text-center">AQI指数</div>
                            <div class="rating">${record.undefinedData}</div>
                        </div>
                    </li>
                </ul>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-4 col-sm-3 col-md-4 col-lg-2">
                        </div>
                        <div class="col-xs-2 col-sm-4 col-md-4 col-lg-4" id="qr2">
                        </div>
                        <div class="col-xs-6 col-sm-5 col-md-4 col-lg-6">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--每小时监测数据-->
        <div class="col-sm-12 col-md-12 col-lg-6">
            <div class="panel panel-primary" style="height: 491px;">
                <div class="panel-heading">
                    <h4 class="text-center">每小时监测数据<span
                            class="glyphicon glyphicon-screenshot pull-right"></span></h4>
                </div>
                <div id="hourTimeMonitorData">
                </div>
            </div>
        </div>
    </div>

    <!--第二栏-->
    <div class="row">

        <!--质量系数排名-->
        <div class="col-sm-12 col-md-12 col-lg-3">
            <div class="panel panel-primary" style="height: 370px; min-width: 220px;">
                <div class="panel-heading">
                    <h4 class="text-center">空气质量排名<span class="glyphicon glyphicon-search pull-right"></span></h4>
                </div>
                <div class="panel-body text-center">
                    <p class="lead">
                        <strong>您在全国的排名是：</strong>
                    </p>
                </div>
                <div>
                    <div class="row" style="margin: 10px;">
                        <div class="col-xs-2 col-sm-5 col-md-5 col-lg-1">
                        </div>
                        <div style="width: 190px; height: 190px;" id="ranking">
                        </div>
                        <div class="col-xs-2 col-sm-5 col-md-3 col-lg-1">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--本月监控指标-->
        <div class="col-sm-12 col-md-12 col-lg-9">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="text-center">本月质量监控<span class="glyphicon glyphicon-ok pull-right"></span>
                    </h4>
                </div>
                <div class="row" style="margin: 0 10px 0 10px;">
                    <div class="row" style="margin: 10px;">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <span class="leftText">温度</span>
                        </div>
                        <div class="col-sm-7 col-md-8 col-lg-8" style="height: 90px;" id="tempMonthlyData">
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2">
                            <span class="rightText" style="margin-top: 23px;font-size: 14px">月平均:23.4℃</span>
                        </div>
                    </div>
                    <div class="row" style="margin: 0 10px 0 10px;">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <span class="leftText">湿度</span>
                        </div>
                        <div class="col-sm-7 col-md-8 col-lg-8" style="height: 90px;" id="humiMonthlyData">
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2">
                            <span class="rightText" style="margin-top: 23px;font-size: 14px">月平均:24%</span>
                        </div>
                    </div>
                    <div class="row" style="margin: 0 10px 0 10px;">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <span class="leftText">PM2.5</span>
                        </div>
                        <div class="col-sm-7 col-md-8 col-lg-8" style="height: 90px;" id="pmMonthlyData">
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2">
                            <span class="rightText" style="margin-top: 23px;font-size: 14px">月平均:342ppm</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--第三栏-->
    <div class="row">

        <!--数据list列表-->
        <div class="col-sm-12 col-md-12 col-lg-12">
            <div class="panel panel-primary" style="height: 472px; min-width: 597px;">
                <div class="panel-heading">
                    <h4 class="text-center">监测数据列表<span class="glyphicon glyphicon-eye-open pull-right"></span></h4>
                </div>
                <div id="dataList" style="max-height: 393px;">
                </div>
            </div>
        </div>

    </div>

</div>

<div class="section">
    <div class="footer">
        <p>&copy; 2018 - 2019 Kevinten10.</p>
    </div>
</div>

<script>
    initializeRatings();
    initializeQR1();
    initializeQR2();
    initializeChart1();
    initializeGrid1();
    initializeProgress1();
    initializeSparkline1();
    initializeSparkline2();
    initializeSparkline3();

    // "质量排名" 初始化
    function initializeProgress1() {
        // "质量排名" 百分比
        $("#ranking").shieldProgressBar({
            min: 0,
            max: 100,
            value: 87,
            layout: "circular",
            layoutOptions: {
                circular: {
                    borderColor: "#FF7900",
                    width: 17,
                    borderWidth: 3,
                    color: "#1E98E4",
                    backgroundColor: "transparent"
                }
            },
            text: {
                enabled: true,
                template: '<span style="font-size:52px;color:#1E98E4;">{0:n0}%</span>'
            }
        });
    }

    // "底部数据列表" 初始化
    function initializeGrid1() {
        $("#dataList").shieldGrid({
            dataSource: {
                // 设置数据
                data: mockData
            },
            sorting: {
                multiple: false
            },
            // 分页
            paging: {
                pageSize: 8,
                pageLinksCount: 10
            },
            selection: {
                type: "row",
                multiple: true,
                toggle: false
            },
            // 数据列
            columns: [
                {field: "id", title: "ID"},
                {field: "name", title: "Person Name"},
                {field: "company", title: "Company Name"},
                {field: "email", title: "Email Address"}
            ]
        });
    }

    // "每小时监测数据" 初始化
    function initializeChart1() {
        // 湿度数据队列1
        var data1 = getRandomArray(24, 1, 50);
        // 温度数据队列2
        var data2 = getRandomArray(24, 15, 35);

        $("#hourTimeMonitorData").shieldChart({
            theme: "light",
            exportOptions: {
                image: false,
                print: false
            },
            primaryHeader: {
                text: "大气监测数据"
            },
            tooltipSettings: {
                axisMarkers: {
                    enabled: true,
                    mode: 'x',
                    width: 2,
                    zIndex: 3,
                    drawColor: "white"
                }
            },
            dataSeries: [
                {
                    seriesType: 'bar',
                    collectionAlias: '湿度',
                    data: data1
                },
                {
                    seriesType: 'line',
                    collectionAlias: '温度',
                    data: data2
                }
            ]
        });
    }

    // "本月监控指标1" 初始化
    function initializeSparkline1() {
        var data1 = getRandomArray(30, 1, 100);

        $("#tempMonthlyData").shieldChart({
            theme: "light",
            exportOptions: {
                image: false,
                print: false
            },
            tooltipSettings: {
                chartBound: true,
                axisMarkers: {
                    enabled: true,
                    mode: 'x'
                },
                customHeaderText: '',
                customPointText: function (point, chart) {
                    return shield.format(
                        '<span><b>{value}</b></span>',
                        {
                            value: point.y
                        }
                    );
                },
            },
            chartAreaPaddingTop: -7,
            chartLegend: {
                enabled: false
            },
            seriesSettings: {
                line: {
                    activeSettings: {
                        pointHoveredState: {
                            enabled: false
                        }
                    },
                    pointMark: {
                        enabled: false
                    }
                }
            },
            axisX: {
                axisTickText: {
                    enabled: false
                },
                plotStripWidth: 0,
                drawWidth: 0,
                ticksWidth: 0,
                ticksHeight: 0
            },
            axisY: {
                axisTickText: {
                    enabled: false
                },
                plotStripWidth: 0,
                drawWidth: 0,
                ticksWidth: 0
            },
            dataSeries: [{
                seriesType: "line",
                data: data1
            }
            ]
        });
    }

    // "本月监控指标2" 初始化
    function initializeSparkline2() {
        var data1 = getRandomArray(30, 1, 100);

        $("#humiMonthlyData").shieldChart({
            theme: "light",
            exportOptions: {
                image: false,
                print: false
            },
            tooltipSettings: {
                chartBound: true,
                axisMarkers: {
                    enabled: true,
                    mode: 'x'
                },
                customHeaderText: '',
                customPointText: function (point, chart) {
                    return shield.format(
                        '<span><b>{value}</b></span>',
                        {
                            value: point.y
                        }
                    );
                },
            },
            chartAreaPaddingTop: -7,
            chartLegend: {
                enabled: false
            },
            seriesSettings: {
                bar: {
                    activeSettings: {
                        pointHoveredState: {
                            enabled: false
                        }
                    },
                    pointMark: {
                        enabled: false
                    }
                }
            },
            axisX: {
                axisTickText: {
                    enabled: false
                },
                plotStripWidth: 0,
                drawWidth: 0,
                ticksWidth: 0,
                ticksHeight: 0
            },
            axisY: {
                axisTickText: {
                    enabled: false
                },
                plotStripWidth: 0,
                drawWidth: 0,
                ticksWidth: 0
            },
            dataSeries: [{
                seriesType: "bar",
                data: data1
            }
            ]
        });
    }

    // "本月监控指标3" 初始化
    function initializeSparkline3() {
        var data1 = getRandomArray(30, 1, 100);

        $("#pmMonthlyData").shieldChart({
            theme: "light",
            exportOptions: {
                image: false,
                print: false
            },
            tooltipSettings: {
                chartBound: true,
                axisMarkers: {
                    enabled: true,
                    mode: 'x'
                },
                customHeaderText: '',
                customPointText: function (point, chart) {
                    return shield.format(
                        '<span><b>{value}</b></span>',
                        {
                            value: point.y
                        }
                    );
                },
            },
            chartAreaPaddingTop: -7,
            chartLegend: {
                enabled: false
            },
            seriesSettings: {
                area: {
                    activeSettings: {
                        pointHoveredState: {
                            enabled: false
                        }
                    },
                    pointMark: {
                        enabled: false
                    }
                }
            },
            axisX: {
                axisTickText: {
                    enabled: false
                },
                plotStripWidth: 0,
                drawWidth: 0,
                ticksWidth: 0,
                ticksHeight: 0
            },
            axisY: {
                axisTickText: {
                    enabled: false
                },
                plotStripWidth: 0,
                drawWidth: 0,
                ticksWidth: 0
            },
            dataSeries: [{
                seriesType: "area",
                data: data1
            }
            ]
        });
    }

    // FIXME 废弃 "设备二维码" 初始化
    function initializeQR1() {
        $("#qr1").shieldQRcode({
            mode: "byte",
            size: 150,
            value: "Mike Smith",
            style: {
                color: "#1E97E3"
            }
        });
    }

    // FIXME 废弃 "监控二维码" 初始化
    function initializeQR2() {
        $("#qr2").shieldQRcode({
            mode: "byte",
            size: 150,
            value: "Avarage: 6.3",
            style: {
                color: "#1E97E3"
            }
        });
    }

    // FIXME 废弃 "星级" 初始化
    function initializeRatings() {
        $('#tempStar').shieldRating({
            max: 7,
            step: 0.1,
            value: 6.3,
            markPreset: false
        });
        $('#humiStar').shieldRating({
            max: 7,
            step: 0.1,
            value: 6,
            markPreset: false
        });
        $('#pmStar').shieldRating({
            max: 7,
            step: 0.1,
            value: 4.5,
            markPreset: false
        });
        $('#aqiStar').shieldRating({
            max: 7,
            step: 0.1,
            value: 5,
            markPreset: false
        });
    }

    function getRandomInt(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    function getRandomArray(length, min, max) {
        var array = [];
        for (var boudary = 0; boudary < length; boudary++) {
            array.push(getRandomInt(min, max));
        }
        return array;
    }

    // 遍历删除广告标签
    $(document).ready(function () {
        $('tspan').each(function () {
            if ($(this).text() === "Demo Version") {
                console.log('delete adv!')
                $(this).remove()
            }
        })
    })
</script>

</body>
</html>
