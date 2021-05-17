<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>填写计划</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
      <!-- 引入layui.js -->
      <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>

      <!-- 引入layui.css -->
      <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
      <!-- 引入creditRecognition_input.js -->
      <link rel="stylesheet" href="../../css/creditRecognition/creditRecognition_input.css" media="all" />

      <link rel="stylesheet" type="text/css" href="../../css/jquery.step.css">
      <script src="../../js/jquery.min.js"></script>
      <script src="../../js/jquery.step.min.js"></script>
	<style>
    #main{
        margin-top: 5%;
        width: 48%;
        padding-bottom: 1%;
        margin-left: 22%;
        }
	</style>
	<script>
    layui.use('table',function(){
            var table = layui.table;
            table.render({
                elem: '#tb',
                height:200,
                url:'/demo/table/user/',    //对应的数据库表
                page:true,
                cols:[[
                    {field:'Id',title:'序号',width:90,align:'center',sort: true},
                    {field:'c_id',title:'课程代码',templet:' ',width:90,align:'center'},
                    {field:'c_name',title:'课程名称',templet:' ',width:100,align:'center'},
                    {field:'score',title:'学分',templet:' ',width:200,align:'center'},
                    {field:'way',title:'考核方式',templet:' ',width:200,align:'center'},
                    {field:'b_course',title:'先修课程',templet:' ',width:200,align:'center'},
                    {field: 'operate', title: '操作', width:110, align:'center', toolbar:'demo'}
                ]]
            })
        }) 
	</script>
  </head>
  
  <body>
    <div id="main">
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
        <form>
            <fieldset class="layui-elem-field">

                <legend>单独添加</legend>
                <div class="layui-col-md4">
                    <label class="layui-form-label">已选年级</label>
                </div>
                <div class="layui-col-md4">
                    <label class="layui-form-label">专业名称</label>
                </div>
                
                <div class="layui-col-md4">
                    <button type="button" id="addcourse" class="layui-btn layui-btn-primary layui-btn-radius">添加课程</button>
                    <button class="layui-btn layui-btn-primary layui-btn-radius">批量删除</button>
                </div>
                
                <table class="layui-table" id="tb" lay-filter="show"></table>
                <div class="layui-form-item">
                    <div class="layui-col-md12" style="padding-left:35%;">
                        <button class="layui-btn">保存</button>
                        <button class="layui-btn">重置</button>
                        <button class="layui-btn">提交</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
    <script type="text/html" id="demo">
        <a class="layui-btn layui-btn-xs layui-btn-danger" id="update">修改</a>
        <a class="layui-btn layui-btn-xs" lay-event="delete">删除</a>
    </script>
    <!-- 添加课程按钮事件已验证 -->
    <script>
        layui.use([ 'layer', 'table',  "laypage","jquery"], function(){
            var
            layer = layui.layer, //弹层
            table = layui.table, //表格
            laypage = layui.laypage, //分页
            $ = layui.jquery
            $('#addcourse').on("click",function(){

	            layer.open({
                    //调整弹框的大小
		            area:['60%','60%'],
                    title:'添加课程',
		            shadeClose:true,//点击旁边地方自动关闭
		            //动画
		            anim:2,
		            //弹出层的基本类型
		            type: 2, 
		            //刚才定义的弹窗页面
		            content: 'add_course.jsp', //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
				})
	        })
        })
    </script>
    <!-- 修改课程按钮事件未验证 -->
    <script>
        layui.use([ 'layer', 'table',  "laypage","jquery"], function(){
            var
            layer = layui.layer, //弹层
            table = layui.table, //表格
            laypage = layui.laypage, //分页
            $ = layui.jquery
            $('#update').on("click",function(){

	            layer.open({
                    //调整弹框的大小
		            area:['60%','60%'],
                    title:'修改课程',
		            shadeClose:true,//点击旁边地方自动关闭
		            //动画
		            anim:2,
		            //弹出层的基本类型
		            type: 2, 
		            //刚才定义的弹窗页面
		            content: 'update_course.html', //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
				})
	        })
        })
    </script>
  </body>
</html>
