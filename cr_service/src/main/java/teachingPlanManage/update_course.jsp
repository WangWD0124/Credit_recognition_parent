<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>修改课程弹框</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
    <script type="text/javascript" src="../../js/noticeManage/noticeManage.js"></script>
    <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
    <style>
        #main{
            margin-top: 5%;
            width: 80%;
            padding-bottom: 1%;
            margin-left: 10%;
        }
    </style>
</head>

<body>
<div id="main">
    <form>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">课程代码:</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  type="text" name="" placeholder="请输入部门" autocomplete="off">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">课程名称:</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  type="text" name="" placeholder="请输入部门" autocomplete="off">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分:</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  type="text" name="" placeholder="请输入部门" autocomplete="off">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">考查方式:</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  type="text" name="" placeholder="请输入部门" autocomplete="off">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">先修课程:</label>
                <div class="layui-input-inline">
                    <textarea class="layui-input"  style="width: 90%;height: 60px;"></textarea>
                </div>
            </div>
        </div>
        <div class="layui-form-item" style="text-align: center">
            <div class="layui-input-inline">
                <button type="reset" class="layui-btn" lay-submit lay-filter="add">重置</button>
                <button class="layui-btn layui-btn-primary">确认</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
