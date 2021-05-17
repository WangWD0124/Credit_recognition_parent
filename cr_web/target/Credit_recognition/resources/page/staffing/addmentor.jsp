<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>人员组织-添加学习导师（弹出层）</title>
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

<body class="addmentor_body">
	<div>
	     <form class="layui-form" action="">
		      <div class="layui-form-item">
				    <div class="layui-inline">
				         <label class="layui-form-label">选择年级</label>
				         <div class="layui-input-inline">
				             <input type="text" class="layui-input" id="year_input" placeholder="yyyy" lay-verify="required">
				         </div>
				     </div>
				     <div class="layui-inline">
				         <label class="layui-form-label">选择班级</label>
					     <div class="layui-input-block">
					        <select name="interest" lay-filter="aihao" lay-verify="required">
					           <option value=""></option>
					           <option value="0">软件工程1班</option>
					           <option value="1">软件工程2班</option>
					        </select>
					     </div>
				     </div>
				    
			  </div>
			  
			  <div class="layui-form-item">
				    <div class="layui-inline">
					     <label class="layui-form-label">快速查询</label>
					     <div class="layui-input-inline">
							 <input name="keywords" placeholder="工号/姓名" autocomplete="off" class="layui-input" />
						 </div>
						 <button class="layui-btn layui-btn-radius" id="search">查询</button>
				    </div>
					<button class="layui-btn layui-btn-warm layui-btn-radius" id="addmentor_Btn2" lay-submit >添加</button>
			  </div>
			  
			  <table class="layui-hide" id="Teacher_table" lay-filter="Teacher_table"></table>
			  <script type="text/html" id="barDemo">
                    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
                    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="del">添加</a>
              </script>
	     </form>
	</div>


</body>
</html>
