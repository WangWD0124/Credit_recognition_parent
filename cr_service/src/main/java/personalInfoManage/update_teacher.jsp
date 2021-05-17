<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>更新教师页</title>
    
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
    <!-- 引入update_person.js -->
    <script type="text/javascript" src="../../js/personalInfoManage/update_person.js"></script>

    <!-- 引入layui.css -->
    <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
    <!-- 引入add_person.css -->
    <link rel="stylesheet" href="../../css/personalInfoManage/update_person.css" media="all" />


  </head>
  
  <body>

    <div class="div_body">

        <fieldset class="layui-elem-field">

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
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-inline">
                                <input type="radio" name="sex" value="男" title="男">
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
                            <div class="layui-input-inline" >
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
                            <button class="layui-btn" lay-submit lay-filter="add">修改</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>

                </form>
            </div>


        </fieldset>
    </div>

  </body>
</html>
