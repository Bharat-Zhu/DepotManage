<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8;">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div class="login">
    <div class="box png">
        <div class="logo png"></div>
        <div class="input">
            <div class="log">
                <form action="loginCheck" method="post" class="form-horizontal">
                    <div class="form-group" style="margin: 0 0 15px 10px;">
                        <div class="input-group">
                            <span class="input-group-addon fa fa-user" style="font-size: 19px;color: #2e7db4;"></span>
                            <input type="text" name="login_account" class="form-control" placeholder="请输入您的帐号...">
                        </div>
                    </div>
                    <div class="form-group" style="margin: 0 0 15px 10px;">
                        <div class="input-group">
                            <span class="input-group-addon fa fa-lock" style="font-size: 20px;color: #2e7db4;"></span>
                            <input type="password" name="login_pwd" class="form-control" placeholder="请输入您的密码...">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-4">
                            <input type="submit" class="btn btn-info btn-block" value="登   录">
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                </form>
            </div>
        </div>
    </div>
    <div class="footer"></div>
</div>
</body>
</html>
