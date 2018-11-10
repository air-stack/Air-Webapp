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
    $(document).ready(function (c) {
        $('.close').on('click', function (c) {
            $('.login-form').fadeOut('slow', function (c) {
                $('.login-form').remove();
            });
        });
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
            <input type="text" class="text" value="Username" name="Username"
                   onFocus="this.value = '';"
                   onBlur="if (this.value === '') {this.value = 'Username';}">
        </label>
        <div class="key">
            <label>
                <input type="password" value="Password" name="Password"
                       onFocus="this.value = '';"
                       onBlur="if (this.value === '') {this.value = 'Password';}">
            </label>
        </div>
        <div class="signin">
            <button type="submit">登录</button>
        </div>
    </form>

</div>
<div class="copy-rights">
    <p>Copyright &copy; 2018.大气质量监测系统</p>
</div>
</body>

</html>
