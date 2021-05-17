<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>人员组织</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	
	<script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	<script type="text/javascript" src="../../js/staffing.js"></script>
	
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/user_public.css" media="all" />
</head>

<body class="adddirector_body">
	<div>
	     <form class="layui-form" id="adddirector_form" action="">
		      <div class="layui-form-item">
				    <label class="layui-form-label">选择职务：</label>
				    <div class="layui-input-block">
				      <select name="post" lay-filter="aihao" lay-verify="required">
				        <option value=""></option>
				        <option value="0">主任</option>
				        <option value="1">副主任</option>
				      </select>
				    </div>
				    
			  </div>
			  
			  <div class="layui-form-item">
				    <label class="layui-form-label">快速查询：</label>
				    <div class="layui-input-inline">
						<input name="keywords" placeholder="工号/姓名" autocomplete="off" class="layui-input" id="selTeacher_Val" />
					</div>
					<button class="layui-btn layui-btn-radius" id="selTeacher_Btn">查询</button>
					<button class="layui-btn layui-btn-warm layui-btn-radius" lay-submit lay-filter="adddirector_Btn2">添加</button>
				    
			  </div>
			  
			  <table class="layui-hide" id="Teacher_table" lay-filter="Teacher_table"></table>
			  <script type="text/html" id="barDemo">
                   <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
                   <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="del">添加</a>
	          </script>
	     </form>
	</div>
	

 
</body>
</html>
