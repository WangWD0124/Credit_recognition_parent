function processBar(){
	var step1 = $("#step");
	var index1 = $("#index");

	step1.step({
		index1: 1,
		time: 500,
		title: ["填写完毕", "已提交", "待审核"]
	});
	step1.nextStep();

}

/* ****************************************
 * 表格//认定表(已提交)
 */
layui.use('table', function(){
	  var $ = layui.$
	  , table = layui.table;
	  
	  table.render({
	    elem: '#table_credit_submitted'
	    ,url:'../../../service/StaffingServlet?op=sel_maj'
	    ,title: '认定表(已提交)'
	    ,cols: [[
	      {field:'id', title:'序号', sort: true, align:'center', width:80 }
	      ,{field:'coursecode', title:'课程代码', align:'center'}		      
	      ,{field:'coursename', title:'课程名称', align:'center', minWidth:200}
	      ,{field:'semester', title:'修读学期', align:'center', width:160}
	      ,{field:'score', title:'成绩',align:'center'}
	      ,{field:'credit', title:'预计获得学分', align:'center', width:120}
	      ,{field:'verifystatus', title:'核实情况', align:'center'}
	      ,{field:'verifyopinion', title:'核实意见', align:'center'}
	      ,{field:'auditstatus', title:'审核情况', align:'center'}
	      ,{field:'auditopinion', title:'审核意见', align:'center'}
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
