<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大气质量监测系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
          content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates"/>

    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<script type="application/javascript">
    // 关闭登录窗口
    $(document).ready(function (c) {
        $('.close').on('click', function (c) {
            $('.login-form').fadeOut('slow', function (c) {
                $('.login-form').remove();
            });
        });
    });
</script>

<script type="application/javascript">
    // 弹出登录信息
    $(document).ready(function (c) {
        var error = '${errormsg}';
        if (error != null && error.length > 1) {
            alert(error)
        }
    });
</script>

<body>
<h1>大气质量监测系统</h1>
<div class="login-form">
    <div class="close"></div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"></div>
    <div class="avtar">
        <img src="img/avtar.png"/>
    </div>
    <form action="login.do" method="post">
        <label>
            <input type="text" class="text" value="admin" name="Username"
                   onFocus="this.value = '';"
                   onBlur="if (this.value === '') {this.value = 'Username';}">
        </label>
        <div class="key">
            <label>
                <input type="password" value="123456" name="Password"
                       onFocus="this.value = '';"
                       onBlur="if (this.value === '') {this.value = 'Password';}">
            </label>
        </div>
        <div class="signin"><input type="submit" value="Login"></div>
    </form>

</div>
<div class="copy-rights">
    <p>Copyright &copy; 2018.大气质量监测系统</p>
</div>
</body>

</html>
