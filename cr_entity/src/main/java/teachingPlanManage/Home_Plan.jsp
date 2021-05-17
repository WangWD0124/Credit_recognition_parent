<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>录入计划首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	计划录入1————首页
	-->

      <!-- 引入layui.js -->
      <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
      <!-- 引入layui.css -->
      <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
    <script>
    layui.use('table',function(){
            var table = layui.table;
            table.render({
                elem: '#tb',
                height:200,
                url:'/demo/table/user/',    //对应的数据库表
                page:true,
                cols:[[
                    {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left', align:'center'},
                    {field: 'grade', title: '年级', width:110, align:'center'},
                    {field: 'num', title: '计划课程数量', width:130, align:'center'},
                    {field: 'scoure', title: '计划达标学分', width:130, align:'center'},
                    {field: 'status', title: '状态', width:130, align:'center'},
                    {field: 'operate', title: '操作', width:110, align:'center', toolbar:'demo'}
                ]]
            })
        })  
	</script>
  </head>
  
  <body>
    <div id="main">
        <label>专业名称:</label>
        <form class="layui-form" action="">
           <table class="layui-table" id="tb" lay-filter="show"></table>
        </form>
    </div>
    <script type="text/html" id="demo">
        {{# if(d.status == '未录入') { }} <!-- 根据状态显示不同的按钮 -->
        <a class="layui-btn layui-btn-xs" lay-event="add">录入</a>
        {{# }if(d.status == '已录入') { }}
        <a class="layui-btn layui-btn-xs" lay-event="detail">详情</a>
        {{#  } }}
      </script>
  </body>
</html>
