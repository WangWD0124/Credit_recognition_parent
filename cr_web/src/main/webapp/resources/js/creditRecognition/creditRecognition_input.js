function processBar(){
	var step1 = $("#step");
	var index1 = $("#index");

	step1.step({
		index1: 0,
		time: 500,
		title: ["填写认定表", "提交", "待审核"]
	});

}

/* ****************************************
 * 表格//认定表
 */
layui.use('table', function(){
	  var $ = layui.$
	  , table = layui.table;
	  
	  table.render({
	    elem: '#table_credit_input'
	    ,url:'../../../service/StaffingServlet?op=sel_maj'
	    ,title: '认定表'
	    ,cols: [[
	      {type: 'checkbox'}
	      ,{field:'id', title:'序号', sort: true, align:'center', width:80 }
	      ,{field:'coursecode', title:'课程代码', align:'center'}		      
	      ,{field:'coursename', title:'课程名称', align:'center', minWidth:250}
	      ,{field:'isstudy', title:'是否修读', templet:"#cbx_isstudy", align:'center', width:90}
	      ,{field:'semester', title:'修读学期', templet:"#sel_semester", align:'center', width:182}
	      ,{field:'score', title:'成绩',align:'center', edit: 'text'}
	      ,{field:'credit', title:'预计获得学分', align:'center'}
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

$('#credit_submit').click(function (){

})
