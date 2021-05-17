/*
 * 选项卡
 * （Tab的切换功能，切换事件监听等，需要依赖element模块）
 */
layui.use(['element','table'],function() {
    var $ = layui.jquery
        , element = layui.element
        , table = layui.table;

    //Hash地址的定位：刷新页面，选项卡将会自动定位到上一次切换的项
    var layid = location.hash.replace(/^#test=/, '');
    element.tabChange('test', layid);

    element.on('tab(test)', function (elem) {
        location.hash = 'test=' + $(this).attr('lay-id');
    });


    table.render({
        elem: '#tb',
        height: 312,
        url: '/demo/table/user/', //数据接口
        page: true, //开启分页
        limit: 3,
        limits: [3, 6, 9],
        cols: [[ //表头
            {type: 'checkbox', algin: 'cener'},
            {field: 'Id', title: '序号', width: 90, align: 'center', sort: true},
            {field: 'out_id', title: '工号', templet: ' ', width: 90, align: 'center', sort: true},
            {field: 'us_id', title: '姓名', templet: ' ', width: 100, align: 'center'},
            {field: 'right', title: '操作', toolbar: '#demo', width: 200, align: 'center'}
        ]],
        initSort: {
            field: 'Id',   //排序字段，对应 cols 设定的各字段名
            type: 'asc'    //排序方式  asc: 升序、desc: 降序、null: 默认排序
        }
    })

    layui.use('table', function () {
        var table = layui.table;

        table.render({
            elem: '#sb',
            height: 312,
            url: '/demo/table/user/', //数据接口
            page: true, //开启分页
            limit: 3,
            limits: [3, 6, 9],
            cols: [[ //表头
                {type: 'checkbox', algin: 'cener'},
                {field: 'Id', title: '序号', width: 90, align: 'center', sort: true},
                {field: 'out_id', title: '学号', templet: ' ', width: 90, align: 'center', sort: true},
                {field: 'us_id', title: '姓名', templet: ' ', width: 100, align: 'center'},
                {field: 'right', title: '操作', toolbar: '#demo', width: 200, align: 'center'}
            ]],
            initSort: {
                field: 'Id',   //排序字段，对应 cols 设定的各字段名
                type: 'asc'    //排序方式  asc: 升序、desc: 降序、null: 默认排序
            }
        })
    });
})