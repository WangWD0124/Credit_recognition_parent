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


layui.use('table',function(){
    var table = layui.table;
    table.render({
        elem: '#tb',
        height:200,
        url:'/demo/table/user/',
        page:true,
        cols:[[
            {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left',align:'center'},
            {field: 'filename', title: '文件名', width:400,align:'center'},
            {field: 'size', title: '大小', width:110,align:'center'},
            {field: 'status', title: '状态', width:110,align:'center'},
            {field: 'operate', title:'操作',toolbar:'#demo',width:110,align:'center'}
        ]]
    })
})

layui.use('table',function(){
    var table = layui.table;
    table.render({
        elem: '#sb',
        height:200,
        url:'/demo/table/user/',
        page:true,
        cols:[[
            {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left',align:'center'},
            {field: 'filename', title: '文件名', width:400,align:'center'},
            {field: 'size', title: '大小', width:110,align:'center'},
            {field: 'status', title: '状态', width:110,align:'center'},
            {field: 'operate', title:'操作',toolbar:'#demo',width:110,align:'center'}
        ]]
    })
})