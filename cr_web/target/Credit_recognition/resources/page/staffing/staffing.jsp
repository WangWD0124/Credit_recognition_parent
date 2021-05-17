<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>人员组织</title>
    
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		 
    <script type="text/javascript" src="../../../webjars/layui/2.5.7/layui.js"></script>
	<script type="text/javascript" src="../../js/staffing.js"></script>
	
	<link rel="stylesheet" href="../../../webjars/layui/2.5.7/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/public.css" media="all" />

   
</head>

<body>
   <div>
        <!-- 选项卡 -->
		<div class="layui-tab" lay-filter="test">
			  <ul class="layui-tab-title">
				    <li class="layui-this" lay-id="1">主任</li>
				    <li lay-id="2">专业负责人</li>
				    <li lay-id="3">学习导师</li>
			  </ul>
			  <div class="layui-tab-content">
			        <!-- 选项卡1：主任 -->
			        <div class="layui-tab-item layui-show">
			            
			            <form class="layui-form" action="">
					  		<div class="layui-form-item">
					  		<blockquote class="layui-elem-quote news_search">
					  		    <div class="layui-inline">
							         <label class="layui-form-label">职务</label>
								     <div class="layui-input-block">
								        <select name="interest" lay-filter="aihao">
								           <option value=""></option>
								           <option value="0">主任</option>
								           <option value="1">副主任</option>
								        </select>
								     </div>
							    </div>
					  		    <div class="layui-inline">
						  		    <label class="layui-form-label"></label>
						  			<div class="layui-input-inline">
								       <input name="keywords" placeholder="工号/姓名" autocomplete="off" class="layui-input" id="seldirector_Val" />
								    </div>
								</div>
							    <button class="layui-btn layui-btn-radius" id="seldirector_Btn">查询</button>
							    <button class="layui-btn layui-btn-warm layui-btn-radius" id="adddirector_Btn1">添加</button>
							    <button class="layui-btn layui-btn-danger layui-btn-radius" id="deldirector_Btn">批量删除</button>
							</blockquote>
					  		</div>
					  	    
					  	    <table class="layui-hide" id="director_table" lay-filter="director_table"></table>
			                <script type="text/html" id="barDemo">
                                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
                                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	                        </script>
	                        
					    </form>
			      
			        </div>
				    
				    <!-- 选项卡2：专业负责人 -->
				    <div class="layui-tab-item">
				    
				        <form class="layui-form" action="">
                            <div class="layui-form-item">
					  		<blockquote class="layui-elem-quote news_search">
								 <div class="layui-inline">
							         <label class="layui-form-label">年级</label>
							         <div class="layui-input-inline">
							             <input type="text" class="layui-input" id="year_input" placeholder="yyyy">
							         </div>
							     </div>
							     <div class="layui-inline">
							         <label class="layui-form-label">专业</label>
								     <div class="layui-input-block">
								        <select name="interest" lay-filter="aihao">
								           <option value=""></option>
								           <option value="0">软件开发</option>
								           <option value="1">软件测试</option>
								        </select>
								     </div>
							     </div>
								 <div class="layui-inline">
								     <label class="layui-form-label"></label>
						  			 <div class="layui-input-inline">
								         <input name="keywords" placeholder="工号/姓名" autocomplete="off" class="layui-input" />
								     </div>
							     </div>
								 <button class="layui-btn layui-btn-radius" id="search">查询</button>
								 <button class="layui-btn layui-btn-warm layui-btn-radius" id="addmajorpic_Btn1">添加</button>
								 <button class="layui-btn layui-btn-danger layui-btn-radius">批量删除</button>
							</blockquote>
							</div>

			                <table class="layui-hide" id="majorpic_table" lay-filter="test"></table>
			                <script type="text/html" id="barDemo">
                                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
                                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	                        </script>
			            </form>
                    </div>
                    
                    
                    <!-- 选项卡3：学习导师 -->
				    <div class="layui-tab-item">
				    
				        <form class="layui-form" action="">
                            <div class="layui-form-item">
					  		<blockquote class="layui-elem-quote news_search">
								 <div class="layui-inline">
							         <label class="layui-form-label">年级</label>
							         <div class="layui-input-inline">
							             <input type="text" class="layui-input" id="year_input" placeholder="yyyy">
							         </div>
							     </div>
							     <div class="layui-inline">
							         <label class="layui-form-label">班级</label>
								     <div class="layui-input-block">
								        <select name="interest" lay-filter="aihao">
								           <option value=""></option>
								           <option value="0">软件工程1班</option>
								           <option value="1">软件工程2班</option>
								        </select>
								     </div>
							     </div>
								 <div class="layui-inline">
								     <label class="layui-form-label"></label>
						  			 <div class="layui-input-inline">
								         <input name="keywords" placeholder="工号/姓名" autocomplete="off" class="layui-input" />
								     </div>
							     </div>
								 <button class="layui-btn layui-btn-radius" id="search">查询</button>
								 <button class="layui-btn layui-btn-warm layui-btn-radius" id="addmentor_Btn1">添加</button>
								 <button class="layui-btn layui-btn-danger layui-btn-radius">批量删除</button>
							</blockquote>
							</div>

			                <table class="layui-hide" id="mentor_table" lay-filter="test"></table>
			                <script type="text/html" id="barDemo">
                                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
                                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	                        </script>
			            </form>
                    </div>
			  </div>
		</div>
   </div>
   
	
</body>
</html>