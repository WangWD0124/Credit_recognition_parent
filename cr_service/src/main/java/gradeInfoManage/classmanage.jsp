<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>班级管理</title>
    
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- 引入layui.js -->
	<script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	<!-- 引入majormanage.js-->
	<script type="text/javascript" src="../../js/gradeInfoManage/classmanage.js"></script>
	
	<!-- 引入layui.css -->
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<!-- 引入majormanage.js -->
	<link rel="stylesheet" href="../../css/gradeInfoManage/classmanage.css" media="all" />

   
</head>

<body> 
    <div>
        <form class="layui-form">
            <div class="layui-form-item">
		  		<blockquote class="layui-elem-quote news_search">
					<div class="layui-inline">
				        <label class="layui-form-label">选择年级：</label>
				        <div class="layui-input-inline">
				            <input type="text" class="layui-input" placeholder="yyyy" name="grade" id="grade"/>
				        </div>
				        <!-- <button type="button" class="layui-btn layui-btn-warm layui-btn-radius" id="">新建年级</button> -->
				     </div>
				     
				     <div class="layui-inline">
				         <label class="layui-form-label l1">填写班级代码：</label>
				         <div class="layui-input-inline">
					         <input type="text" class="layui-input" placeholder="例如：SOF19401" autocomplete="off" name="" id=""/>
					     </div>
					     <label class="layui-form-label l1">填写班级名称：</label>
			  			 <div class="layui-input-inline">
					         <input type="text" class="layui-input" placeholder="例如：19级软件工程1班" autocomplete="off" name="tno" id="" />
					     </div>
				     </div>
					 <button type="button" class="layui-btn layui-btn-warm layui-btn-radius">添加班级</button>
					 <button type="button" class="layui-btn layui-btn-danger layui-btn-radius" id="batch_del">批量删除</button>
				</blockquote>
			</div>
			
			<div class="div_1">
                <table class="layui-hide" id="table_classmanage" lay-filter="test"></table>
				<script type="text/html" id="binding">
					<a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="binding">绑定</a>
				</script>
				<script type="text/html" id="del">
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
				</script>
	        </div>
         </form>
     </div>          
                    
   
	
</body>
</html>