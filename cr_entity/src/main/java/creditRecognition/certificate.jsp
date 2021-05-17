<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>证书</title>


    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">

    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!-- 引入layui.js -->
    <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
    <!-- 引入certificate.js-->
    <script type="text/javascript" src="../../js/creditRecognition/certificate.js"></script>

    <!-- 引入layui.css -->
    <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
    <!-- 引入certificate.css -->
    <link rel="stylesheet" href="../../css/creditRecognition/certificate.css" media="all" />
</head>

<body>
<div class="div_body">

    <form>

        <div class="A4">
            <!--打印开始位置-->
            <!--startprint1-->
            <h2 align="center">专业选修课学分认定证书</h2>

            <table class="table_header">
                <tr>
                    <td>年级:</td>
                    <td>{{ grade }}</td>
                    <td></td>
                    <td>专业(方向):</td>
                    <td colspan="2">{{ major }}</td>
                </tr>
                <tr>
                    <td>学号:</td>
                    <td>{{ sto }}</td>
                    <td>姓名:</td>
                    <td>{{ sname }}</td>
                    <td>班级:</td>
                    <td>{{ classname }}</td>
                </tr>
            </table>

            <div class="layui-inline">
                <h3>选修课程:</h3>
            </div>

                <table class="layui-table layui-table-cell" id="tb" lay-filter="show" style="overflow: hidden"></table>

            <table class="table_foot">
                <tr>
                    <td class="td1">专业选修课修读共计：</td>
                    <td>{{ Credit }} 分</td>
                    <td></td>
                    <td>已达到专业修读要求</td>
                    <td></td>
                </tr>
                <tr>
                    <td class="td1">专业负责老师审核：</td>
                    <td>{{ tname1 }}</td>
                    <td>日期:</td>
                    <td>{{ date1 }}</td>
                </tr>
                <tr>
                    <td class="td1">主任审核：</td>
                    <td>{{ tname2 }}</td>
                    <td>日期:</td>
                    <td>{{ date1 }}</td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td>系章:</td>
                </tr>
            </table>

            <!--打印结束位置-->
            <!--endprint1-->
        </div>

        <div class="foot">
            <button class="layui-btn">保存PDF格式</button>
            <button class="layui-btn" onclick=preview(1)>打印</button>
        </div>
    </form>
</div>
</body>
</html>
