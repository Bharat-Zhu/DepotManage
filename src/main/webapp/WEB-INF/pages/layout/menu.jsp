<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="nav nav-list">
    <li class="active">
        <a href="showHome">
            <i class="menu-icon fa fa-tachometer"></i>
            <span class="menu-text"> 主页 </span>
        </a>

        <b class="arrow"></b>
    </li>
    <li class="main_menu">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-list"></i>
            <span class="menu-text"> 一览 </span>

            <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>

        <ul class="submenu">
            <li class="">
                <a href="javascript:void(0);" onclick="addBreadcrumb(this, 'YL')">
                    <i class="menu-icon fa fa-caret-right"></i>
                    简单通用表格
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="javascript:void(0);" onclick="addBreadcrumb(this, 'YL')">
                    <i class="menu-icon fa fa-caret-right"></i>
                    jqGrid插件表格
                </a>

                <b class="arrow"></b>
            </li>
        </ul>
    </li>

    <li class="main_menu">
        <a href="#">
            <i class="menu-icon fa fa-list-alt"></i>
            <span class="menu-text"> 插件 </span>
        </a>

        <b class="arrow"></b>
    </li>

    <li class="main_menu">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-gear"></i>
            <span class="menu-text"> 系统 </span>
            <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>
        <ul class="submenu">
            <li class="">
                <a href="javascript:void(0);" onclick="addBreadcrumb(this, 'XT')">
                    <i class="menu-icon fa fa-caret-right"></i>
                    系统设置
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="javascript:void(0);" onclick="addBreadcrumb(this, 'XT')">
                    <i class="menu-icon fa fa-caret-right"></i>
                    权限登录
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="javascript:void(0);" onclick="addBreadcrumb(this, 'XT')">
                    <i class="menu-icon fa fa-caret-right"></i>
                    权限管理
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="javascript:void(0);" onclick="addBreadcrumb(this, 'XT')">
                    <i class="menu-icon fa fa-caret-right"></i>
                    权限设置
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="memberInsert" onclick="addBreadcrumb(this, 'XT');">
                    <i class="menu-icon fa fa-caret-right"></i>
                    登录者新增
                </a>

                <b class="arrow"></b>
            </li>
        </ul>
    </li>
</ul>