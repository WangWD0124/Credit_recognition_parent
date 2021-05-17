<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>专业选修课学分认定</title>
    
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- 引入layui.js -->
	<script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	<!-- 引入creditRecognition_input.js-->
	<script type="text/javascript" src="../../js/creditRecognition/creditRecognition_input.js"></script>
	
	<!-- 引入layui.css -->
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<!-- 引入creditRecognition_input.js -->
	<link rel="stylesheet" href="../../css/creditRecognition/creditRecognition_input.css" media="all" />
    
    <link rel="stylesheet" type="text/css" href="../../css/jquery.step.css">
    <script src="../../js/jquery.min.js"></script>
    <script src="../../js/jquery.step.min.js"></script>

</head>

<body>
<div class="div_body">
	<div id="step">
		<div class="ui-step-wrap">
		    <div class="ui-step-bg"></div>
		    <div class="ui-step-progress" style="width: 200px;"></div>
		</div>
	</div> 
	<div id="step_time">
	    <div id="time1"></div>
	    <div id="time2">2021/4/26 12:00</div>
	    <div id="time3">2021/4/26 12:00</div>
	</div>
	
	<hr class="layui-border-green">
	
	<form class="layui-form" action="creditRecognition_submitted.jsp">
		<div class="div_fieldset">
		    <fieldset class="layui-elem-field">
		        <legend>填写认定表</legend>
		        
					<div class="div_table">
		                <table class="layui-hide" id="table_credit_input" lay-filter="test"></table>
		                <script type="text/html" id="btn_delete">
                        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	                </script>
		                <script type="text/html" id="cbx_isstudy">
                        <input type="checkbox" name="isstudy" value="{{d.id}}" lay-skin="switch" lay-text="是|否" lay-filter="isstudy" {{ d.id == 10003 ? 'checked' : '' }}>
                    </script>
	                    <script type="text/html" id="sel_semester">
                        <select name="semester">
                            <option value="">-请选择修读学期-</option>
                            <option value="" selected="">2019-20学年第一学期</option>
                            <option value="">2019-20学年第一学期</option>
                            <option value="">2019-20学年第一学期</option>
                        </select>
                    </script>
			        </div>
			        <div class="div_span">
			            <span>已填写修读课程共{{ n }}门，预计获得学分为{{ s }}分</span>
			        </div>
		         
		     </fieldset>
	     </div>
	     
	     <div class="div_button">
	         <button class="layui-btn layui-btn-primary layui-btn-radius" id="">重置</button>
			 <button class="layui-btn layui-btn-radius" id="credit_submit" lay-submit >提交</button>
	     </div>
      </form>         
</div>

    <script type="text/javascript">
        processBar();
    </script>

 

</body></html>