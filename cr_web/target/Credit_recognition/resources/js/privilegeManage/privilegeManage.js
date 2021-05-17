layui.use(['element','layer'], function(){
    var $ = layui.jquery
        ,element = layui.element
        , layer = layui.layer;
    var active = {
        notice: function(){
        layer.open({
        type: 1
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: '300px;'
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: ['火速围观', '残忍拒绝']
        ,btnAlign: 'c'
        ,moveType: 1 //拖拽模式，0或者1
        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br> layer 只是作为 layui 的一个弹层模块，由于其用户基数较大，所以常常会有人以为 layui 是 <del>layerui</del><br><br>layer 虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级 ^_^</div>'
        ,success: function(layero){
            var btn = layero.find('.layui-layer-btn');
        }
    });
    }}
});
layui.use(['tree', 'util'], function(){
    var tree = layui.tree
        ,layer = layui.layer
        ,util = layui.util

        //模拟数据
        ,data = [{
            title: '一级1'
            ,id: 1
            ,field: 'name1'
            ,checked: true
            ,spread: true
            ,children: [{
                title: '二级1-1 可允许跳转'
                ,id: 3
                ,field: 'name11'
                ,href: 'https://www.layui.com/'
                ,children: [{
                    title: '三级1-1-3'
                    ,id: 23
                    ,field: ''
                    ,children: [{
                        title: '四级1-1-3-1'
                        ,id: 24
                        ,field: ''
                        ,children: [{
                            title: '五级1-1-3-1-1'
                            ,id: 30
                            ,field: ''
                        },{
                            title: '五级1-1-3-1-2'
                            ,id: 31
                            ,field: ''
                        }]
                    }]
                },{
                    title: '三级1-1-1'
                    ,id: 7
                    ,field: ''
                    ,children: [{
                        title: '四级1-1-1-1 可允许跳转'
                        ,id: 15
                        ,field: ''
                        ,href: 'https://www.layui.com/doc/'
                    }]
                },{
                    title: '三级1-1-2'
                    ,id: 8
                    ,field: ''
                    ,children: [{
                        title: '四级1-1-2-1'
                        ,id: 32
                        ,field: ''
                    }]
                }]
            },{
                title: '二级1-2'
                ,id: 4
                ,spread: true
                ,children: [{
                    title: '三级1-2-1'
                    ,id: 9
                    ,field: ''
                    ,disabled: true
                },{
                    title: '三级1-2-2'
                    ,id: 10
                    ,field: ''
                }]
            },{
                title: '二级1-3'
                ,id: 20
                ,field: ''
                ,children: [{
                    title: '三级1-3-1'
                    ,id: 21
                    ,field: ''
                },{
                    title: '三级1-3-2'
                    ,id: 22
                    ,field: ''
                }]
            }]
        },{
            title: '一级2'
            ,id: 2
            ,field: ''
            ,spread: true
            ,children: [{
                title: '二级2-1'
                ,id: 5
                ,field: ''
                ,spread: true
                ,children: [{
                    title: '三级2-1-1'
                    ,id: 11
                    ,field: ''
                },{
                    title: '三级2-1-2'
                    ,id: 12
                    ,field: ''
                }]
            },{
                title: '二级2-2'
                ,id: 6
                ,field: ''
                ,children: [{
                    title: '三级2-2-1'
                    ,id: 13
                    ,field: ''
                },{
                    title: '三级2-2-2'
                    ,id: 14
                    ,field: ''
                    ,disabled: true
                }]
            }]
        },{
            title: '一级3'
            ,id: 16
            ,field: ''
            ,children: [{
                title: '二级3-1'
                ,id: 17
                ,field: ''
                ,fixed: true
                ,children: [{
                    title: '三级3-1-1'
                    ,id: 18
                    ,field: ''
                },{
                    title: '三级3-1-2'
                    ,id: 19
                    ,field: ''
                }]
            },{
                title: '二级3-2'
                ,id: 27
                ,field: ''
                ,children: [{
                    title: '三级3-2-1'
                    ,id: 28
                    ,field: ''
                },{
                    title: '三级3-2-2'
                    ,id: 29
                    ,field: ''
                }]
            }]
        }]

    tree.render({
        elem: '#test12'
        ,data: data
        ,showCheckbox: true  //是否显示复选框
        ,id: 'demoId1'
        ,isJump: true //是否允许点击节点时弹出新窗口跳转
        ,click: function(obj){
            var data = obj.data;  //获取当前点击的节点数据
            layer.msg('状态：'+ obj.state + '<br>节点数据：' + JSON.stringify(data));
        }
    });

    //按钮事件
    util.event('lay-demo', {
        getChecked: function(othis){
            var checkedData = tree.getChecked('demoId1'); //获取选中节点的数据

            layer.alert(JSON.stringify(checkedData), {shade:0});
            console.log(checkedData);
        }
        ,setChecked: function(){
            tree.setChecked('demoId1', [12, 16]); //勾选指定节点
        }
        ,reload: function(){
            //重载实例
            tree.reload('demoId1', {

            });

        }
    });

    //常规用法
    tree.render({
        elem: '#test1' //默认是点击节点可进行收缩
        ,data: data1
    });

    //无连接线风格
    tree.render({
        elem: '#test13'
        ,data: data1
        ,showLine: false  //是否开启连接线
    });

    //仅节点左侧图标控制收缩
    tree.render({
        elem: '#test2'
        ,data: data1
        ,onlyIconControl: true  //是否仅允许节点左侧图标控制展开收缩
        ,click: function(obj){
            layer.msg(JSON.stringify(obj.data));
        }
    });
    //手风琴模式
    tree.render({
        elem: '#test4'
        ,data: [{
            title: '优秀'
            ,children: [{
                title: '80 ~ 90'
            },{
                title: '90 ~ 100'
            }]
        },{
            title: '良好'
            ,children: [{
                title: '70 ~ 80'
            },{
                title: '60 ~ 70'
            }]
        },{
            title: '要努力奥'
            ,children: [{
                title: '0 ~ 60'
            }]
        }]
        ,accordion: true
    });

    //点击节点新窗口跳转
    tree.render({
        elem: '#test5'
        ,data: data
        ,isJump: true  //link 为参数匹配
    });

    //开启复选框
    tree.render({
        elem: '#test7'
        ,data: data2
        ,showCheckbox: true
    });

    //开启节点操作图标
    tree.render({
        elem: '#test9'
        ,data: data1
        ,edit: ['add', 'update', 'del'] //操作节点的图标
        ,click: function(obj){
            layer.msg(JSON.stringify(obj.data));
        }
    });
});
layui.use('layer', function(){ //独立版的layer无需执行这一句
    var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

    //触发事件
    var active = {
        setTop: function(){
            var that = this;
            //多窗口模式，层叠置顶
            layer.open({
                type: 2 //此处以iframe举例
                ,title: '当你选择该窗体时，即会在最顶端'
                ,area: ['390px', '260px']
                ,shade: 0
                ,maxmin: true
                ,offset: [ //为了演示，随机坐标
                    Math.random()*($(window).height()-300)
                    ,Math.random()*($(window).width()-390)
                ]
                ,content: '//layer.layui.com/test/settop.html'
                ,btn: ['继续弹出', '全部关闭'] //只是为了演示
                ,yes: function(){
                    $(that).click();
                }
                ,btn2: function(){
                    layer.closeAll();
                }

                ,zIndex: layer.zIndex //重点1
                ,success: function(layero){
                    layer.setTop(layero); //重点2
                }
            });
        }

        ,offset: function(othis){
            var type = othis.data('type')
                ,text = othis.text();

            layer.open({
                type: 1
                ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                ,id: 'layerDemo'+type //防止重复弹出
                ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
                ,btn: '关闭全部'
                ,btnAlign: 'c' //按钮居中
                ,shade: 0 //不显示遮罩
                , yes: function () {
                    layer.closeAll();
                }
            });
        }
    };

    $('#layerDemo .layui-btn').on('click', function(){
        var othis = $(this), method = othis.data('method');
        active[method] ? active[method].call(this, othis) : '';
    });

});