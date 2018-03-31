<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <title><tiles:insertAttribute name="title" ignore="true" /></title>
    <tiles:insertAttribute name="script" />
    <script>
        $(function () {
        });
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 column">
            <tiles:insertAttribute name="header" />
        </div>
    </div>
    <div class="row" style="margin-top: 55px;margin-bottom: 30px;">
        <div class="col-md-2 column">
            <tiles:insertAttribute name="menu" />
        </div>
        <div class="col-md-10 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <tiles:insertAttribute name="breadcrumb" />
                </div>
            </div>
            <tiles:insertAttribute name="body" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 column">
            <tiles:insertAttribute name="footer" />
        </div>
    </div>
</div>
</body>
</html>
