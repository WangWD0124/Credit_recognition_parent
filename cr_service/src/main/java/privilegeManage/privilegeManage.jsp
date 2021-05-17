<%--
  Created by IntelliJ IDEA.
  User: 王伟东
  Date: 2021/5/8
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>My JSP 'bacground.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
    <script src="../../js/privilegeManage/privilegeManage.js"></script>
    <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../css/privilegeManage/privilegeManage.css" media="all" />



</head>

<body>
    <div class="div_body">

            <div style="padding: 15px;">
                <table class="layui-table">
                    <colgroup>
                        <col width="100">
                        <col width="250">
                        <col width="250">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th style="text-align: center">序号</th>
                        <th style="text-align: center">角色名称</th>
                        <th style="text-align: center">人数</th>
                        <th style="text-align: center">更新时间</th>
                        <th style="text-align: center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>管理员</td>
                        <td>1</td>
                        <td>2021-03-21 17:16:44</td>
                        <td><button type="button" class="layui-btn layui-btn-xs layui-btn-normal notice1" data-method="notice1">权限分配</button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>主任</td>
                        <td>2</td>
                        <td>2021-03-21 17:16:44</td>
                        <td><button type="button" class="layui-btn layui-btn-xs layui-btn-normal notice1" data-method="notice1">权限分配</button></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>专业负责人</td>
                        <td>5</td>
                        <td>2021-03-21 17:16:44</td>
                        <td><button type="button" class="layui-btn layui-btn-xs layui-btn-normal notice1" data-method="notice1">权限分配</button></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>学习导师</td>
                        <td>40</td>
                        <td>2021-03-21 17:16:44</td>
                        <td><button type="button" class="layui-btn layui-btn-xs layui-btn-normal notice1" data-method="notice1">权限分配</button></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


</body>
</html>