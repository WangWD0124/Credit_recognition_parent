layui.use('table', function(){
    var table = layui.table;

    table.render({
        elem: '#tb',
        height: 312,
        url: '/demo/table/user/', //要改成自己的数据接口
        page: true, //开启分页
        limit:3,
        limits:[3,6,9],
        cols: [[ //表头
            {field:'Id',title:'序号',width:90,align:'center',sort: true},
            {field:'c_id',title:'课程代码',templet:' ',width:90,align:'center',sort: true},
            {field:'c_name',title:'课程名称',templet:' ',width:100,align:'center'},
            {field:'score',title:'学分',templet:' ',width:200,align:'center'},
            {field:'way',title:'考核方式',templet:' ',width:200,align:'center'},
            {field:'b_course',title:'先修课程',templet:' ',width:200,align:'center'},
        ]],
        initSort:{
            field: 'Id',   //排序字段，对应 cols 设定的各字段名
            type: 'asc'    //排序方式  asc: 升序、desc: 降序、null: 默认排序
        }
    })

})