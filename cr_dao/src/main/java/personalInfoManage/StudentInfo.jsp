<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'StudentInfo.jsp' starting page</title>
    
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
            {type:'checkbox',algin:'cener'},
            {field:'Id',title:'序号',width:90,align:'center',sort: true},
			      {field:'out_id',title:'学号',templet:' ',width:90,align:'center',sort: true},
			      {field:'us_id',title:'姓名',templet:' ',width:100,align:'center'},
			      {field:'right',title:'操作',toolbar:'#demo',width:200,align:'center'}
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
  </body>
</html>
