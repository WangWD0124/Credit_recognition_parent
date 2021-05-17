/* ****************************************
 * 表格//专业管理数据表
 */
layui.use(['layer','table','laydate'], function(){
	var $ = layui.$
		, layer = layui.layer
		, table = layui.table
		, laydate = layui.laydate;

	//年选择器
	laydate.render({
		elem: '#grade'
		,type: 'year'
	});

	$("#batch_del").click(function() {
		layer.confirm('真的删除吗', function (index) {
			layer.close(index);
		});
	});

	table.render({
		elem: '#table_majormanage'
		,url:'../../../service/StaffingServlet?op=sel_maj'
		,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
		,defaultToolbar: ['filter', 'exports', 'print',]
		,title: '专业管理数据表'
		,cols: [[
			{type: 'checkbox'}
			,{field:'id', title:'序号', sort: true, align:'center', width:100}
			,{field:'grade', title:'年级', sort: true, align:'center'}
			,{field:'majorcode', title:'专业代码', align:'center'}
			,{field:'majorname', title:'专业名称', align:'center'}
			,{field:'teacher', title:'专业负责人', toolbar: '#binding', align:'center'}
			,{title:'操作', toolbar: '#del', fixed: 'right', align:'center'}
		]]
		,page: true
	});

	//监听行工具事件
	table.on('tool(test)', function(obj){
		var data = obj.data;
		if(obj.event === 'del'){
			layer.confirm('真的删除吗', function(index){
				obj.del();
				layer.close(index);
			});
		} else if(obj.event === 'binding'){
			layer.open({
				type: 2,
				title: '绑定专业负责人',
				content: 'addmajorpic.jsp',
				area: ['850px', '550px'],
				shade: 0.5,
				btn: '关闭',
				resize: false, //不允许拉伸
				zIndex: layer.zIndex
			});
		}
	});



});