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
	<!-- 引入creditRecognition_input.js-->
	<script type="text/javascript" src="../../js/creditRecognition/audit.js"></script>
	
	<!-- 引入layui.css -->
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<!-- 引入creditRecognition_input.js -->
	<link rel="stylesheet" href="../../css/creditRecognition/audit.css" media="all" />
</head>

<body>
<div class="div_body">
	<div class="info">
		学号：{{ }}   姓名：{{ }}
	</div>
	
	<form class="layui-form layui-form-pane" action="">
		        
		<div class="div_table">
            <table class="layui-hide" id="table_credit_audit_2" lay-filter="test"></table>
            <script type="text/html" id="cbx_isPass">
                <input type="checkbox" name="" value="{{d.id}}" lay-skin="switch" lay-text="是|否" lay-filter="" {{ d.id == 10003 ? 'checked' : '' }}>
            </script>
        </div>
        
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">审核意见</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>
   
	    <div class="div_button">
	        <button class="layui-btn layui-btn-radius" id="" lay-submit >确认</button>
	    </div>
	    
    </form>         
</div>


</body></html>