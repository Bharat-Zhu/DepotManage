<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <title><tiles:insertAttribute name="title" ignore="true"/></title>
    <tiles:insertAttribute name="script"/>
</head>
<body class="no-skin">
<!-- Header -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <tiles:insertAttribute name="header"/>
</div>

<!-- Main -->
<div class="main-container" id="main-container">
    <!-- Menu -->
    <div id="sidebar" class="sidebar responsive">
        <tiles:insertAttribute name="menu"/>
    </div>
    <!-- Right -->
    <div class="main-content">
        <!-- 面包屑导航 -->
        <div class="breadcrumbs" id="breadcrumbs">
            <tiles:insertAttribute name="breadcrumb"/>
        </div>
        <!-- 内容 -->
        <div class="page-content" style="padding:0; background-color: white;">
            <iframe id="contentFrame" height="auto" scrolling="no" frameborder="0" style="margin:0;padding:0;width:100%;height:100%;">
                <%--<tiles:insertAttribute name="body"/>--%>
            </iframe>
        </div>
    </div>
    <!-- Footer -->
    <div class="footer" style="padding-top: 40px;">
        <tiles:insertAttribute name="footer"/>
    </div>
    <!-- 回顶部 -->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-arrow-up icon-only bigger-110"></i>
    </a>
</div>
</body>
</html>
