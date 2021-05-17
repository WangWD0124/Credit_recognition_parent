<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'bacground.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
<link rel="stylesheet" href="../../js/privilegeManage.js" media="all" />
  </head>
  
  <body>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <div class="layui-btn-container">
  <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">居中弹出</button>
  <button type="button" class="layui-btn layui-btn-sm" lay-demo="getChecked">获取选中节点数据</button>
  <button type="button" class="layui-btn layui-btn-sm" lay-demo="setChecked">勾选指定节点</button>
  <button type="button" class="layui-btn layui-btn-sm" lay-demo="reload">重载实例</button>
</div>
 
<div id="test12" class="demo-tree-more"></div>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    底部固定区域
  </div>
</div>
 
<script src="./layui/layui.js"></script>
<script>
//JavaScript代码区域

</script>

</body>
</html>