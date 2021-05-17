layui.use('form',function () {
    let form = layui.form;
    form.render();
}),

layui.use('table',function(){
    var table = layui.table,
        $ = layui.jquery;
    table.render({
        elem: '#tb',
        url:'../../../service/StaffingServlet?op=sel_tea',
        cols:[[
            {field: 'id', title: '序号', width:60},
            {field: 'filename', title: '课程代码', width:90},
            {field: 'size', title: '课程名称', width:133},
            {field: 'status', title: '学分', width:60},
            {field: 'operate', title: '修读学期', width:115},
            {field: 'size', title: '成绩', width:60},
            {field: 'status', title: '学习导师<br>核实意见', width:90},
            {field: 'operate', title: '专业负责人<br>审核意见', width:100},
        ]],
    })
})

function preview(oper)
{
    if (oper = 1){
        bdhtml=window.document.body.innerHTML;//获取当前页的html代码
        sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域
        eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域
        prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html
        prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html
        window.document.body.innerHTML=prnhtml;
        window.print();
        window.document.body.innerHTML=bdhtml;
    } else {
        window.print();
    }
}
