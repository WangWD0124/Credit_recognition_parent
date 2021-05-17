<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>教师信息页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <!-- 引入layui.js -->
	  <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	  <script type="text/javascript" src="../../js/personalInfoManage/find_person.js"></script>

	  <!-- 引入layui.css -->
	  <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />

  </head>
  
  <body>

  <!-- 选项卡 -->
  <div class="layui-tab" lay-filter="test">

	  <ul class="layui-tab-title">
		  <li class="layui-this" lay-id="1">查询教师</li>
		  <li lay-id="2">查询学生</li>
	  </ul>

	  <div class="layui-tab-content">

		  <!-- 选项卡1：查询教师 -->
		  <div class="layui-tab-item layui-show">

			  <div class="div_body">

				  <blockquote class="layui-elem-quote news_search">
					  <div class="layui-inline">
						  <label>快速查询：</label>
						  <div class="layui-input-inline">
							  <input type="text" value="" placeholder="请输入关键字" id="key" class="layui-input search_input">
						  </div>

						  <a class="layui-btn search_btn"  id="search">查询</a>
					  </div>
					  <div class="layui-inline">
						  <a class="layui-btn layui-btn-normal usersAdd_btn">批量删除</a>
					  </div>
				  </blockquote>
				  <div class="layui-form news_list">
					  <table class="layui-table" id="tb" lay-filter="show">

					  </table>

				  </div>

				  <script type="text/html" id="demo">
					  <a class="layui-btn layui-btn-xs" lay-event="update">详情</a>
					  <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="delete">修改</a>
					  <a class="layui-btn layui-btn-xs" lay-event="add">删除</a>
				  </script>

			  </div>

		  </div>

		  <!-- 选项卡2：查询学生 -->
		  <div class="layui-tab-item layui-show">

			  <div class="div_body">

				  <blockquote class="layui-elem-quote news_search">
					  <div class="layui-inline">
						  <label>快速查询：</label>
						  <div class="layui-input-inline">
							  <input type="text" value="" placeholder="请输入关键字" id="key" class="layui-input search_input">
						  </div>

						  <a class="layui-btn search_btn"  id="search">查询</a>
					  </div>
					  <div class="layui-inline">
						  <a class="layui-btn layui-btn-normal usersAdd_btn">批量删除</a>
					  </div>
				  </blockquote>
				  <div class="layui-form news_list">
					  <table class="layui-table" id="sb" lay-filter="show">

					  </table>

				  </div>

				  <script type="text/html" id="demo">
					  <a class="layui-btn layui-btn-xs" lay-event="update">详情</a>
					  <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="delete">修改</a>
					  <a class="layui-btn layui-btn-xs" lay-event="add">删除</a>
				  </script>

			  </div>

		  </div>


	  </div>

  </div>

  </body>
</html>
