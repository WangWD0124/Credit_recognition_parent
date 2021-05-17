/* ****************************************
 * 表格//审核弹框表
 */
layui.use('table', function(){
	  var $ = layui.$
	  , table = layui.table;
	  
	  table.render({
	    elem: '#table_credit_audit_2'
	    ,url:'../../../service/StaffingServlet?op=sel_maj'
	    ,title: '审核弹框表'
	    ,cols: [[
	      {field:'id', title:'序号', align:'center'}
	      ,{field:'coursecode', title:'课程代码', align:'center', width: 100}
	      ,{field:'coursename', title:'课程名称', align:'center', minWidth:200}
	      ,{field:'semester', title:'修读学期', templet:"#sel_semester", align:'center', width:182}
	      ,{field:'score', title:'成绩',align:'center', edit: 'text',width: 100}
	      ,{field:'credit', title:'学分', align:'center',width: 60}
	      ,{field:'isstudy', title:'是否通过', templet:"#cbx_isPass", align:'center', width:90}
	    ]]
	    ,page: true
	    ,done: function (res, curr, count) {
      	  //设置下拉框样式在表格之上 不会遮挡下拉框
      	  $(".layui-table-body").css('overflow','visible');
      	  $(".layui-table-box").css('overflow','visible');
      	  $(".layui-table-view").css('overflow','visible');
      	  
        }

	  });
})
