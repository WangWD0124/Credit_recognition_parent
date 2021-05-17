<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    
    <title>添加信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- 引入layui.js -->
	<script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	<!-- 引入add_person.js -->
	<script type="text/javascript" src="../../js/personalInfoManage/add_person.js"></script>
	
	<!-- 引入layui.css -->
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<!-- 引入add_person.css -->
	<link rel="stylesheet" href="../../css/personalInfoManage/add_person.css" media="all" />


</head>
  
<body>
  
    <div>
        <!-- 选项卡 -->
	    <div class="layui-tab" lay-filter="test">
	  
		    <ul class="layui-tab-title">
			    <li class="layui-this" lay-id="1">添加教师</li>
			    <li lay-id="2">添加学生</li>
		    </ul>
		  
		    <div class="layui-tab-content">
		  
	            <!-- 选项卡1：添加教师 -->
	            <div class="layui-tab-item layui-show">

					<div class="div_body">

						<!-- 单独添加 -->
						<fieldset class="layui-elem-field">

						    <legend>单独添加</legend>
						    <div class="main">

							    <form class="layui-form">

									<div class="layui-form-item">

										<div class="layui-inline">
											<label class="layui-form-label">姓名:</label>
											<div class="layui-input-inline">
												<input class="layui-input" type="text" name="" placeholder="请输入部门" autocomplete="off">
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-label">工号:</label>
											<div class="layui-input-inline">
												<input class="layui-input" type="text" name="" placeholder="请输入年级" autocomplete="off">
											</div>
										</div>

									</div>

									<div class="layui-form-item">

										<div class="layui-inline">
											<label class="layui-form-label">性别:</label>
											<div class="layui-input-inline">
												<input type="radio" name="sex" value="男" title="男" checked="">
												<input type="radio" name="sex" value="女" title="女">
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-label">手机号码:</label>
											<div class="layui-input-inline">
												<input class="layui-input" type="text" name="" placeholder="请输入职级" autocomplete="off">
											</div>
										</div>

									</div>

									<div class="layui-form-item">

										<div class="layui-inline">
											<label class="layui-form-label">电子邮箱:</label>
											<div class="layui-input-inline">
												<input class="layui-input" type="text" name="" placeholder="请输入部门" autocomplete="off">
											</div>
										</div>
										<div class="layui-inline">
											<label class="layui-form-label">部门:</label>
											<div class="layui-input-inline">
												<input class="layui-input" type="text" name="" placeholder="请输入年级" autocomplete="off">
											</div>
										</div>

									</div>

									<div class="layui-form-item">

										<div class="layui-inline">
											<label class="layui-form-label">职级:</label>
											<div class="layui-input-inline">
												<input class="layui-input" type="text" name="" placeholder="请输入真实姓名" autocomplete="off">
											</div>
										</div>

										<div class="layui-inline">
											<label class="layui-form-label">岗位</label>
											<div class="layui-input-inline">
												<select name="station">
													<option value=""></option>
													<option value="0">主任</option>
													<option value="1">副主任</option>
													<option value="2">专业负责人</option>
													<option value="3">学习导师</option>
												</select>
											</div>
										</div>

									</div>

									<div class="layui-form-item">
										<div class="layui-input-inline" style="padding-left:35%;">
											<button class="layui-btn" lay-submit lay-filter="add">提交</button>
											<button type="reset" class="layui-btn layui-btn-primary">重置</button>
										</div>
									</div>

							    </form>

						    </div>

						</fieldset>
						<!-- 批量添加 -->
						<fieldset class="layui-elem-field">

						    <legend>批量导入</legend>
						    <div class="foot">

								<form class="layui-form">

								    <button>选择文件</button>
									<button>上传文件</button>
									<table class="layui-table" id="tb" lay-filter="show">
									</table>
									<script type="text/html" id="demo">
										<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="delete">删除</a>
									</script>

								</form>

							</div>

						</fieldset>

					</div>

				</div>

		        <!-- 选项卡2：添加学生 -->
				<div class="layui-tab-item layui-show">

					<div class="div_body">

						<!-- 单独添加 -->
						<fieldset class="layui-elem-field">

						    <legend>单独添加</legend>
						    <div class="main">

							    <form class="layui-form">

								    <div class="layui-col-md5">
										<label class="layui-form-label">专业代码:</label>
										<input type="text" name="" placeholder="请输入部门" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
									</div>
									<div class="layui-col-md6">
										<label class="layui-form-label">年级:</label>
										<input type="text" name="" placeholder="请输入年级" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
									</div>
									<div class="layui-col-md5">
										<label class="layui-form-label">行政班代码:</label>
										<input type="text" name="" placeholder="请输入职级" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
									</div>

									<hr/>

									<div class="layui-col-md5">
										<label class="layui-form-label">姓名:</label>
										<input type="text" name="" placeholder="请输入真实姓名" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
									</div>
									<div class="layui-col-md6">
										<label class="layui-form-label">学号:</label>
										<input type="text" name="" placeholder="请输入学号" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
									</div>
									<div class="layui-col-md5">
										<div class="layui-form-item">
											<label class="layui-form-label">性别：</label>
											<input type="radio" name="sex" value="nan" title="男">
											<input type="radio" name="sex" value="nv" title="女">
										</div>
									</div>
									<div class="layui-col-md6">
										<label class="layui-form-label">电子邮箱:</label>
										<input type="text" name="" placeholder="请输入邮箱" autocomplete="off" style="width: 40%;height: 32px;">
									</div>

									<div class="layui-form-item">
										<div class="layui-input-inline" style="padding-left:35%;">
											<button class="layui-btn" lay-submit lay-filter="add">提交</button>
											<button type="reset" class="layui-btn layui-btn-primary">重置</button>
										</div>
									</div>

								</form>

							</div>

						</fieldset>

						<!-- 批量添加 -->
						<fieldset class="layui-elem-field">

							<legend>批量导入</legend>
						    <div class="foot">

							    <form class="layui-form">

									<button>选择文件</button>
									<button>上传文件</button>
									<table class="layui-table" id="sb" lay-filter="show">
									</table>
									<script type="text/html" id="demo">
										<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="delete">删除</a>
									</script>

								</form>

							</div>

						</fieldset>

					</div>

				</div>


			</div>

        </div>
    </div>

</body>
</html>
