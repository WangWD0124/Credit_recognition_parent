<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>计划审核页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
      <!-- 引入layui.js -->
      <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
      <!-- 引入layui.css -->
      <link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
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
            cols: [[
                {field:'Id',title:'序号',width:90,align:'center',sort: true},
                {field:'out_id',title:'年级',templet:' ',width:90,align:'center'},
    			{field:'us_id',title:'专业名称',templet:' ',width:100,align:'center'},
    			{field:'right',title:'专业负责人',templet:' ',width:200,align:'center'},
                {field:'right',title:'计划课程数量',templet:' ',width:200,align:'center'},
                {field:'right',title:'计划达标学分',templet:' ',width:200,align:'center'},
                {field:'status',title:'审核状态',templet:' ',width:200,align:'center'},
                {field:'right',title:'操作',toolbar:'#demo',width:200,align:'center'}
                
    			      
            ]],
            initSort:{    				
                field: 'Id',   //排序字段，对应 cols 设定的各字段名	
        		type: 'asc'    //排序方式  asc: 升序、desc: 降序、null: 默认排序
            }
          });
          var jason;
				 table.on('tool(show)',function(obj){
					 var data=obj.data;
					  //修改计划
					 if(obj.event=='shenhe'){
						 json=JSON.stringify(data);
						 layer.open({
						 type:2,
						 title:'修改计划',
						 content:'shenhe.jsp',  //打开相应弹框
						 area:['400px','500px'],    //弹框大小
                         shade:[0.8, '#393D49'],   
					 }); 
                    }
                    else if(obj.event=='detail'){ 
						 json=JSON.stringify(data);
						 layer.open({
						 type:2,
						 title:'计划详情',
						 content:'detail.jsp',
						 area:['400px','400px'],
                         shade:[0.8, '#393D49'],
						 });
					 }
                })    
        	})
    </script>
  </head>
  
  <body>
    <blockquote class="layui-elem-quote news_search">
		<div class="layui-inline">
            <label>快速查询：</label>
		    <div class="layui-input-inline" >
                <select id="dept" onchange="s_major();" style="width: 160px;height: 38px;margin-top: 5px;text-align: center" >
                    <option value="">请选择系别</option>
                    <option value="rj">软件工程系</option>
                    <option value="wy">外语系</option>
                    <option value="cj">财经系</option>
                    <option value="dz">电子系</option>
                    <option value="js">计算机系</option>
                    <option value="wl">网络系</option>
                    <option value="sm">数码媒体系</option>
                    <option value="yx">游戏系</option>
                    <option value="gl">管理系</option>
                </select>
		    </div>
            <div class="layui-input-inline" >
                <select id="major" style="width: 180px;height: 38px;margin-top: 5px;text-align: center">
                    <option value="">专业</option>
                </select>
            </div>
		    
            <div class="layui-input-inline">
		    	<input type="text" value="" placeholder="请输入年级" id="key" class="layui-input search_input">
		    </div>
            <div class="layui-input-inline">
                <select  style="width: 160px;height: 38px;margin-top: 5px;text-align: center">
                    <option>请选择</option>
                    <option>待审核</option>
                    <option>已审核</option>
                </select>
            </div>
		    <a class="layui-btn search_btn"  id="search">筛选</a>
		</div>
	</blockquote>
    <div class="layui-form news_list">
        <table class="layui-table" id="tb" lay-filter="show">
      </table>
  </div>

    <script>
      var f_dept = {};
      f_dept['rj'] = ["软件工程",'数据科学与大数据技术','电子与计算机工程'];
      f_dept['wy'] = ['英语','日语'];
      f_dept['cj'] = ['电子商务','国际经济与贸易','财务管理','会计学'];
      f_dept['dz'] = ['智能科学与技术','电子信息工程','自动化','通信工程'];
      f_dept['js'] = ['物联网工程','计算机科学与技术'];
      f_dept['wl'] = ['网络工程','网络工程（云计算）','信息管理与信息系统'];
      f_dept['sm'] = ['视觉传达设计','风景园林','环境设计','数字媒体艺术','产品设计'];
      f_dept['yx'] = ['动画','数字媒体技术','网络与新媒体'];
      f_dept['gl'] = ['物流管理','工商管理','人力资源管理','市场营销','行政管理'];

      function s_major() {
          var target1 = document.getElementById("dept");
          var target2 = document.getElementById("major");
          var select_dept = target1.options[target1.selectedIndex].value;

          while (target2.options.length) {
                    target2.remove(0);
              }
          var dept_list = f_dept[select_dept];
            if (dept_list) {
                for (var i = 0; i < dept_list.length; i++) {
                    var item = new Option(dept_list[i], i);
                    //将列表中的内容加入到第二个下拉框
                    target2.options.add(item);
                }
            }
      }
    </script>
    <script type="text/html" id="demo">
      {{# if(d.status == '待审核') { }}
      <a class="layui-btn layui-btn-xs" lay-event="shenhe">审核</a>
      {{# }if(d.status == '已审核') { }}
      <a class="layui-btn layui-btn-xs" lay-event="detail">详情</a>
      {{#  } }}
    </script>
  </body>
</html>
