<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>审核</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <!-- 引入layui.js -->
    <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
    <!-- 引入Examine.js -->
    <script type="text/javascript" src="../../js/teachingPlanManage/Examine.js"></script>

    <!-- 引入layui.css -->
    <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
    <!-- 引入Examine.css -->
    <link rel="stylesheet" href="../../css/teachingPlanManage/Examine.css" media="all" />
</head>

<body>
    <div class="div_body">

        <fieldset class="layui-elem-field">

            <div class="main">

                <form class="layui-form">

                    <table class="table_header">
                        <tr>
                            <td>专业:</td>
                            <td>{{ major }}</td>
                            <td> </td>
                            <td>年级：</td>
                            <td>{{ grade }}</td>
                            <td> </td>
                            <td>计划达标学分：</td>
                            <td>{{ score }}</td>
                        </tr>
                    </table>

                    <table class="layui-table" id="tb" lay-filter="show"></table>

                    <label>审核意见</label>
                    <div class="layui-form-item">
                        <textarea style="width: 100%; height: 100px;"></textarea>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-inline" style="padding-left:35%;">
                            <button class="layui-btn" lay-submit lay-filter="add">同意通过</button>
                            <button class="layui-btn layui-btn-primary">退回</button>
                        </div>
                    </div>

                </form>

            </div>

        </fieldset>

    </div>


</body>
</html>
