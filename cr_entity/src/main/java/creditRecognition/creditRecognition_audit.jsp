<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>专业选修课学分认定审核</title>

	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<!-- 引入layui.js -->
	<script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	<!-- 引入creditRecognition_audit.js-->
	<script type="text/javascript" src="../../js/creditRecognition/creditRecognition_audit.js"></script>

	<!-- 引入layui.css -->
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<!-- 引入majormanage.js -->
	<link rel="stylesheet" href="../../css/gradeInfoManage/majormanage.css" media="all" />


</head>

<body>
<div>
	<form class="layui-form">
		<div class="layui-form-item">
			<blockquote class="layui-elem-quote news_search">
				<div class="layui-inline">
					<label class="layui-form-label">审核情况：</label>
					<div class="layui-input-inline">
						<select name="semester">
							<option value="" selected="">-全部-</option>
							<option value="">已审核</option>
							<option value="">暂未审核</option>
						</select>
					</div>
					<label class="layui-form-label l1">达标情况：</label>
					<div class="layui-input-inline">
						<select name="semester">
							<option value="" selected="">-全部-</option>
							<option value="">已达标</option>
							<option value="">暂未达标</option>
						</select>
					</div>
					<label class="layui-form-label l1">学生：</label>
					<div class="layui-input-inline">
						<input type="text" class="layui-input" placeholder="学号/姓名" autocomplete="off" name="" id="" />
					</div>
				</div>
				<button class="layui-btn layui-btn-radius" id="" lay-submit >筛选</button>
			</blockquote>
		</div>
	</form>

	<div class="div_table">
		<table class="layui-hide" id="table_credit_audit" lay-filter="test"></table>
		<script type="text/html" id="audit">
			<a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="audit">待审核<span class="layui-badge layui-bg-red">8</span></a>
		</script>
	</div>
</div>

</body>
</html>