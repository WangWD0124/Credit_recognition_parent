/*
 * 选项卡
 * （Tab的切换功能，切换事件监听等，需要依赖element模块）
 */
layui.use('element', function(){
		  var $ = layui.jquery
		  , element = layui.element; 
		  
		  //Hash地址的定位：刷新页面，选项卡将会自动定位到上一次切换的项
		  var layid = location.hash.replace(/^#test=/, '');
		  element.tabChange('test', layid);
		  
		  element.on('tab(test)', function(elem){
		    location.hash = 'test='+ $(this).attr('lay-id');
		  });
	  
	});


/* ****************************************
 * 弹出层
 * （需要依赖layer模块）
 */
layui.use('layer', function(){
		var $ = layui.$
		, layer = layui.layer;
		
		//添加主任
		$("#adddirector_Btn1").click(function(){
			layer.open({
				type:2,
				title:'添加主任',
				content:'adddirector.jsp',
				area:['850px','580px'],
				shade:0.5,
				btn:'关闭',
				resize:false, //不允许拉伸
				zIndex:layer.zIndex
			});
		});
		
		//添加专业负责人
		$("#addmajorpic_Btn1").click(function(){
			layer.open({
				type:2,
				title:'添加专业负责人',
				content:'addmajorpic.jsp',
				area:['850px','580px'],
				shade:0.5,
				btn:'关闭',
				resize:false, //不允许拉伸
				zIndex:layer.zIndex
			});
		});
		
		//添加学习导师
		$("#addmentor_Btn1").click(function(){
			layer.open({
				type:2,
				title:'添加学习导师',
				content:'addmentor.jsp',
				area:['850px','580px'],
				shade:0.5,
				btn:'关闭',
				resize:false, //不允许拉伸
				zIndex:layer.zIndex
			});
		});
		
    });			

/* ****************************************
 * 表格
 * （需要依赖table模块）
 */
layui.use('table', function(){
	  var $ = layui.$
	  , table = layui.table;
	  
	  //主任数据表
	  table.render({
	    elem: '#director_table'
	    ,url:'../../user/servlet/StaffingServlet?op=sel_dir'
	    ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
	    ,defaultToolbar: ['filter', 'exports', 'print',]
	    ,title: '主任数据表'
	    ,cols: [[
	      {type: 'checkbox', fixed: 'left', align:'center'}
	      ,{field:'id', title:'序号', fixed: 'left', sort: true, align:'center'}
	      ,{field:'job', title:'职务', align:'center'}
	      ,{field:'tno', title:'工号', sort: true, align:'center'}
	      ,{field:'tname', title:'姓名', align:'center'}
	      ,{title:'操作', toolbar: '#barDemo', fixed: 'right', align:'center'}
	    ]]
	    ,page: true
	  });
	  
	  //专业负责人数据表
	  table.render({
	    elem: '#majorpic_table'
	    ,url:'../../../service/StaffingServlet?op=sel_maj'
	    ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
	    ,defaultToolbar: ['filter', 'exports', 'print',]
	    ,title: '专业负责人数据表'
	    ,cols: [[
	      {type: 'checkbox', fixed: 'left', align:'center'}
	      ,{field:'id', title:'序号', fixed: 'left', sort: true, align:'center'}
	      ,{field:'grade', title:'年级', sort: true, align:'center'}		      
	      ,{field:'major', title:'专业', align:'center'}	      
	      ,{field:'tno', title:'工号', sort: true, align:'center'}
	      ,{field:'tname', title:'姓名', align:'center'}
          ,{title:'操作', toolbar: '#barDemo', fixed: 'right', align:'center'}
	    ]]
	    ,page: true
	  });
	  
	  //学习导师数据表
	  table.render({
	    elem: '#mentor_table'
	    ,url:'../../../service/StaffingServlet?op=sel_men'
	    ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
	    ,defaultToolbar: ['filter', 'exports', 'print']
	    ,title: '学习导师数据表'
	    ,cols: [[
	      {type: 'checkbox', fixed: 'left', align:'center'}
	      ,{field:'id', title:'序号', fixed: 'left', sort: true, align:'center'}
	      ,{field:'grade', title:'年级', sort: true, align:'center'}		      
	      ,{field:'clazz', title:'班级', align:'center'}		      
	      ,{field:'tno', title:'工号', sort: true, align:'center'}
	      ,{field:'tname', title:'姓名', align:'center'}
	      ,{title:'操作', toolbar: '#barDemo', fixed: 'right', align:'center'}
	    ]]
	    ,page: true
	  });
	  
	  //教师数据表
	  table.render({
		    elem: '#Teacher_table'
		    ,url: '../../../service/StaffingServlet?op=sel_tea'
		    ,title: '教师数据表'
		    ,cols: [[
		      {type: 'checkbox', fixed: 'left', align:'center'}
		      ,{field:'id', title:'序号', fixed: 'left', sort: true, align:'center'}
		      ,{field:'tno', title:'工号', sort: true, align:'center'}
		      ,{field:'tname', title:'姓名', align:'center'}
		      ,{title:'操作', toolbar: '#barDemo', fixed: 'right', align:'center'}
		    ]]
		    ,page: true
		  });
/*	  //头工具栏事件
	  table.on('toolbar(test)', function(obj){
	    var checkStatus = table.checkStatus(obj.config.id);
	    switch(obj.event){
	      case 'getCheckData':
	        var data = checkStatus.data;
	        layer.alert(JSON.stringify(data));
	      break;
	      case 'getCheckLength':
	        var data = checkStatus.data;
	        layer.msg('选中了：'+ data.length + ' 个');
	      break;
	      case 'isAll':
	        layer.msg(checkStatus.isAll ? '全选': '未全选');
	      break;
	      
	    };
	  });*/
	  
	  //监听表格复选框选择
	  table.on('checkbox(Teacher_table)', function(obj){
		    console.log(obj)
		  });
	  //监听行工具事件
	  table.on('tool(test)', function(obj){
	    var data = obj.data;
	    //console.log(obj)
	    if(obj.event === 'del'){
	      layer.confirm('真的删除行么', function(index){
	        obj.del();
	        layer.close(index);
	      });
	    } else if(obj.event === 'edit'){
	      layer.prompt({
	        formType: 2
	        ,value: data.email
	      }, function(value, index){
	        obj.update({
	          email: value
	        });
	        layer.close(index);
	      });
	    }
	  });
});

/* ****************************************
 * 表单
 * 需要依赖form模块
 */
layui.use(['form','layer','laydate','table','laytpl'],function(){
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        laydate = layui.laydate,
        laytpl = layui.laytpl,
        table = layui.table;
		
        //staffing.jsp主任“查询”监听
	    $("#seldirector_Btn").on("click",function(){
	    	$.post("../../../service/StaffingServlet?op=selTeacher",formData,function(res){
				if(res>0){
					layer.msg("添加成功",{time:2000},function(){
						//重新加载表格
						parent.layui.table.reload('director_table');
						//关闭当前弹层
						var index = window.parent.layer.getFrameIndex(window.name);
						window.parent.layer.close(index);
					});
				}else{
					layer.msg("添加失败");
				}
			});
			return false;
		});
	        if($("#seldirector_Val").val() != ''){
	            table.reload("director_table",{
	                page: {
	                    curr: 1 //重新从第 1 页开始
	                },
	                where: {
	                    key: $("#seldirector_Val").val()  //搜索的关键字
	                }
	            })
	        }else{
	            layer.msg("请输入查询的内容");
	        }
	    });
	    
	  
		//adddirector.jsp“添加”监听
/*		form.on('submit(adddirector_Btn2)', function(){
			var formData=$("#adddirector_form").serialize();
			$.post("servlet/StaffingServlet?op=adddirector",formData,function(res){
				if(res>0){
					layer.msg("添加成功",{time:2000},function(){
						//重新加载表格
						parent.layui.table.reload('director_table');
						//关闭当前弹层
						var index = window.parent.layer.getFrameIndex(window.name);
						window.parent.layer.close(index);
					});
				}else{
					layer.msg("添加失败");
				}
			});
			return false;
		});*/
		
/*		//addmajorpic.jsp“添加”监听表单提交
		form.on('submit(addmajorpic_Btn2)', function(){
			var formData=$("form").serialize();
			$.post("servlet/StaffingServlet?op=addmajorpic",formData,function(res){
				if(res>0){
					layer.msg("添加成功",{time:2000},function(){
						//重新加载表格
						parent.layui.table.reload('majorpic_table');
						//关闭当前弹层
						var index = window.parent.layer.getFrameIndex(window.name);
						window.parent.layer.close(index);
					});
				}else{
					layer.msg("添加失败");
				}
			});
			return false;
		});
		
		//addmentor.jsp“添加”监听表单提交
		form.on('submit(addmentor_Btn2)', function(){
			var formData=$("form").serialize();
			$.post("servlet/StaffingServlet?op=addmentor",formData,function(res){
				if(res>0){
					layer.msg("添加成功",{time:2000},function(){
						//重新加载表格
						parent.layui.table.reload('mentor_table');
						//关闭当前弹层
						var index = window.parent.layer.getFrameIndex(window.name);
						window.parent.layer.close(index);
					});
				}else{
					layer.msg("添加失败");
				}
			});
			return false;
		});		
		
		//staffing.jsp主任“批量删除”监听表单
	    $("#deldirector_Btn").click(function(){
	        var checkStatus = table.checkStatus('director_table'),
	            data = checkStatus.data,
	            Id = [];
	        if(data.length > 0) {
	            for (var i in data) {
	                Id.push(data[i].Id);
	            }
	            layer.confirm('确定删除选中的用户？', {icon: 3, title: '提示信息'}, function (index) {
	                // $.get("删除文章接口",{
	                //     newsId : newsId  //将需要删除的newsId作为参数传入
	                // },function(data){
	            	director_table.reload();
	                layer.close(index);
	                // })
	            })
	        }else{
	            layer.msg("请选择需要删除的用户");
	        }
	    })

		//表单取值
		layui.$('#LAY-component-form-getval').on('click', function(){
		var data = form.val('example');
		alert(JSON.stringify(data));
		});    */

/* ****************************************
 * 日期时间选择器
 * 需要依赖layDate模块
 */
layui.use('laydate', function(){
    var laydate = layui.laydate;
    //年选择器
	  laydate.render({
	    elem: '#year_input'
	    ,type: 'year'
	    ,trigger: 'click',
	  });
});