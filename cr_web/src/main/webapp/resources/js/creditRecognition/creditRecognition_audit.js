/* ****************************************
 * 表格//审核表
 */
layui.use(['layer','table'], function(){
	var $ = layui.$
		, layer = layui.layer
		, table = layui.table;
	  
	  table.render({
	    elem: '#table_credit_audit'
	    ,url:'../../../service/StaffingServlet?op=sel_maj'
	    ,title: '审核表'
	    ,cols: [[
	      {field:'id', title:'序号', sort: true, align:'center', width:80 }
	      ,{field:'sno', title:'学号', align:'center'}		      
	      ,{field:'sname', title:'姓名', align:'center'}
	      ,{field:'courses', title:'认定通过课程', align:'center'}
	      ,{field:'credits', title:'累积获得学分', align:'center'}
	      ,{field:'isReach', title:'是否达标',align:'center'}
	      ,{field:'waitAudit', title:'待审核课程',toolbar: '#audit',  align:'center'}
	    ]]
	    ,page: true
	  });

	//监听行工具事件
	table.on('tool(test)', function(obj){
		var data = obj.data;
		if(obj.event === 'audit'){
			layer.open({
				type: 2,
				title: '正在审核中...',
				content: 'audit.jsp',
				area: ['850px', '480px'],
				shade: 0.5,
				btn: '关闭',
				resize: false, //不允许拉伸
				zIndex: layer.zIndex
			});
		}
	});
})
