<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>绑定专业负责人</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	
	<!-- 引入layui.js -->
	<script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	<!-- 引入addmajorpic.js -->
	<script type="text/javascript" src="../../js/gradeInfoManage/addmajorpic.js"></script>
	
	<!-- 引入layui.css -->
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<!-- 引入addmajorpic.css -->
	<link rel="stylesheet" href="../../css/gradeInfoManage/addmajorpic.css" media="all" />
</head>

<body class="addmajorpic_body">
	<div>
	     <form class="layui-form" action="">
			 <div class="layui-form-item">
			  <div class="layui-inline">
			             <label class="layui-form-label">已选年级：</label>
			             <label class="layui-form-label"></label>
			        </div>
				    <div class="layui-inline">
				         <label class="layui-form-label">已选专业:</label>
					     <label class="layui-form-label"></label>
				    </div>
			  </div>

			  
			  <div class="layui-form-item">
				    <label class="layui-form-label">快速查询：</label>
				    <div class="layui-input-inline">
						<input name="keywords" placeholder="工号/姓名" autocomplete="off" class="layui-input" />
					</div>
					<button class="layui-btn layui-btn-radius" id="search">查询</button>
					<button class="layui-btn layui-btn-warm layui-btn-radius" id="addmajorpic_Btn2" lay-submit >添加</button>
			  </div>

			 <div class="div_table">
			  <table class="layui-hide" id="table_addmajorpic" lay-filter="Teacher_table"></table>
			  <script type="text/html" id="barDemo">
                   <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
                   <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="del">添加</a>
	          </script>
			 </div>
	     </form>
	</div>
	

</body>
</html>
