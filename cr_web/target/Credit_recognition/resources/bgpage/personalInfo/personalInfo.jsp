<%--
  Created by IntelliJ IDEA.
  User: 王伟东
  Date: 2021/5/8
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人资料</title>
    <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
    <script type="text/javascript" src="../../js/personalInfo/personalInfo.js"></script>
    <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../css/personalInfo/personalInfo.css" media="all" />
</head>
<body>
<div class="div_body">

    <fieldset class="layui-elem-field">

        <legend>个人基本信息</legend>
        <div class="div_table">

        <table class="table_main">
            <tr>
                <td class="td1">姓名：</td>
                <td>{{}}</td>
                <td class="td1">工号：</td>
                <td>{{}}</td>
            </tr>
            <tr>
                <td class="td1">手机号码：</td>
                <td>{{}}</td>
                <td class="td1">电子邮箱：</td>
                <td>{{}}</td>
            </tr>
            <tr>
                <td class="td1">职称：</td>
                <td>{{}}</td>
                <td class="td1">职务：</td>
                <td>{{}}</td>
            </tr>
        </table>
</div>
    </fieldset>

</div>


</body>
</html>
