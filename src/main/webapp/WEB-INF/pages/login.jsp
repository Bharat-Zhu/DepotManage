<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8;">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div class="login">
    <div class="box png">
        <div class="logo png"></div>
        <div class="input">
            <div class="log">
                <form:form action="loginCheck" method="post" cssClass="form-horizontal" cssStyle="padding-left: 40px;">
                    <div class="form-group">
                        <label class="col-sm-4 control-label" style="padding-right: 0;">帐号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="userNumber"
                                   placeholder="请输入您的帐号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label"style="padding-right: 0;">密码</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" name="userPwd"
                                   placeholder="请输入您的密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-4">
                            <input type="submit" class="btn btn-info btn-block" value="登   录">
                        </div>
                    </div>
                    <input type="hidden" name="access_token" value="${sessionScope.accessToken}">
                </form:form>
            </div>
        </div>
    </div>
    <div class="footer"></div>
</div>
</body>
</html>
