<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>添加课程弹框</title>

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
    <link rel="stylesheet" href="../../css/public.css" media="all" />
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
        <fieldset>
            <legend>添加课程</legend>
            <div>
                <label class="layui-form-label">课程代码:</label>
                <input type="text" name="" placeholder="请输入部门" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
            </div>
            <div>
                <label class="layui-form-label">课程名称:</label>
                <input type="text" name="" placeholder="请输入部门" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
            </div>
            <div>
                <label class="layui-form-label">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分:</label>
                <input type="text" name="" placeholder="请输入部门" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
            </div>
            <div>
                <label class="layui-form-label">考查方式:</label>
                <input type="text" name="" placeholder="请输入部门" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
            </div>
            <div>
                <label class="layui-form-label">先修课程:</label>
            </div>
            <div>
                <textarea style="width: 40%;height: 60px;"></textarea>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-inline" style="padding-left:35%;">
                    <button type="reset" class="layui-btn">重置</button>
                    <button class="layui-btn layui-btn-primary" lay-submit lay-filter="add">添加</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
