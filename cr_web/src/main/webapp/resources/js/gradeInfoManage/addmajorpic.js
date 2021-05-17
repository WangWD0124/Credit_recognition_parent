/* ****************************************
 * 表格//专业负责人数据表
 */
layui.use('table', function(){
	var $ = layui.$
		, table = layui.table;

	table.render({
		elem: '#table_addmajorpic'
		,url: '../../../service/StaffingServlet?op=sel_tea'
		,title: '专业负责人数据表'
		,height: '330px'
		,cols: [[
			{type: 'checkbox', name:'box'}
			,{field:'id', title:'序号', sort: true, align:'center'}
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

//	  active = {
//			    getCheckData: function(){ //获取选中数据
//			      var checkStatus = table.checkStatus('idTest')
//			      ,data = checkStatus.data;
//			      layer.alert(JSON.stringify(data));
//			    }
//	  }

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