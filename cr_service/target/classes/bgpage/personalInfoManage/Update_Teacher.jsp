<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新教师页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="resourse/css/layui.css">
    <script src="resourse/js/layui.js"></script>
	<style>
        #main{
            margin-top: 5%;
            width: 55%;
            padding-bottom: 1%;
            margin-left: 20%;
        }
    </style>
    <script>
        layui.use('form',function () {
           let form = layui.form;
           form.render();
        })
    </script>
  </head>
  
  <body>
    <div id="main">
        <form class="layui-form" action="">
            <fieldset>
                <div class="layui-col-md5">
                    <label class="layui-form-label">姓名:</label>
                    <input type="text" name="" placeholder="请输入部门" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
                </div>
                <div class="layui-col-md6">
                    <label class="layui-form-label">工号:</label>
                    <input type="text" name="" placeholder="请输入年级" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
                </div>

                <div class="layui-col-md5">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block">
                      <input type="radio" name="sex" value="男" title="男">
                      <input type="radio" name="sex" value="女" title="女">
                    </div>
                  </div>
                <div class="layui-col-md6">
                    <label class="layui-form-label">手机号码:</label>
                    <input type="text" name="" placeholder="请输入职级" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
                </div>

                <div class="layui-col-md5">
                    <label class="layui-form-label">电子邮箱:</label>
                    <input type="text" name="" placeholder="请输入部门" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
                </div>
                <div class="layui-col-md6">
                    <label class="layui-form-label">部门:</label>
                    <input type="text" name="" placeholder="请输入年级" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
                </div>

                <div class="layui-col-md5">
                    <label class="layui-form-label">职级:</label>
                    <input type="text" name="" placeholder="请输入真实姓名" autocomplete="off" style="width: 40%;margin-bottom: 1%;height: 32px;">
                </div>
                <div class="layui-col-md6">
                    <label class="layui-form-label">岗位</label>
                    <div class="layui-input-block" style="width: 41%;">
                      <select name="station" lay-verify="required">
                        <option value=""></option>
                        <option value="0">主任</option>
                        <option value="1">副主任</option>
                        <option value="2">专业负责人</option>
                        <option value="3">学习导师</option>
                      </select>
                    </div>
                  </div>
                
                
                <div class="layui-form-item">
                    <div class="layui-input-inline" style="padding-left:35%;">
                        <button class="layui-btn" lay-submit lay-filter="add">修改</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
  </body>
</html>
