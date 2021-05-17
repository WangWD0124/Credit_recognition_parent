<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提交计划页</title>
    
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
        width: 48%;
        padding-bottom: 1%;
        margin-left: 22%;
        }
	</style>
	<script src="./layui/layui.js" th:src="@{/css/layui/layui.js}"></script>
    <script>
        layui.use('table', function(){
          var table = layui.table;
          
          table.render({
            elem: '#tb',
            height: 312,
            url: '/demo/table/user/', //数据接口
            page: true, //开启分页
            limit:3,
            limits:[3,6,9],
            cols: [[ //表头
                {field:'Id',title:'序号',width:90,align:'center',sort: true},
                {field:'c_id',title:'课程代码',templet:' ',width:90,align:'center'},
                {field:'c_name',title:'课程名称',templet:' ',width:100,align:'center'},
                {field:'score',title:'学分',templet:' ',width:90,align:'center'},
                {field:'way',title:'考核方式',templet:' ',width:90,align:'center'},
                {field:'b_course',title:'先修课程',templet:' ',width:100,align:'center'},
                {field:'d_score',title:'达标学分',templet:' ',width:90,align:'center'},
                {field:'qingkuan',title:'审核情况',templet:' ',width:90,align:'center'},
                {field:'yijian',title:'主任审核意见',templet:' ',width:200,align:'center'},
            ]],
            initSort:{    				
                field: 'Id',   //排序字段，对应 cols 设定的各字段名	
                type: 'asc'    //排序方式  asc: 升序、desc: 降序、null: 默认排序
            }
          })
        })
    </script>
  </head>
  
  <body>
    <div id="main">
        <form>
            <fieldset>
                <legend>课程计划 详情</legend>
                <div class="layui-col-md4">
                    <label class="layui-form-label">专业:</label>
                </div>
                <div class="layui-col-md4">
                    <label class="layui-form-label">年级:</label>
                </div>
                <div class="layui-form news_list">
                    <table class="layui-table" id="tb" lay-filter="show">  
                </table>
                </div>
                <div class="layui-form-item">
                    <div class="layui-col-md12" style="padding-left:30%;">
                        <button class="layui-btn" lay-filter="add">取消提交</button>
                        <button class="layui-btn ">返回</button>
                        <button class="layui-btn ">返回修改</button>
                    </div>
                </div>
            </fieldset>
        </form>
	</div>
  </body>
</html>
