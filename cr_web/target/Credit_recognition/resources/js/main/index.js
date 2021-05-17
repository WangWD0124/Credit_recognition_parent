layui.use(['element','layer'], function(){
    var $ = layui.jquery
        ,element = layui.element //Tab的切换功能，切换事件监听等，需要依赖element模块
        , layer = layui.layer;
    $("#gggl").click(function(){
        element.tabAdd('demo', {
            title: '系统公告管理' //用于演示
            ,content: '<iframe src="http://localhost:8080/cr_web_war_exploded/resources/bgpage/noticeManage/noticeManage.jsp" style="width: 100%; height: 100%"></iframe>'
            ,id: '29' //实际使用一般是规定好的id，这里以时间戳模拟下
        });
        element.tabChange('demo', '29')
    });
    $("#xgmm").click(function(){
        element.tabAdd('demo', {
            title: '修改密码' //用于演示
            ,content: '<iframe src="http://localhost:8080/cr_web_war_exploded/resources/bgpage/personalInfo/changePassword.jsp" style="width: 100%; height: 100%"></iframe>'
            ,id: '30' //实际使用一般是规定好的id，这里以时间戳模拟下
        });
        element.tabChange('demo', '30')
    });
    $("#grzl").click(function(){
        element.tabAdd('demo', {
            title: '个人资料' //用于演示
            ,content: '<iframe src="http://localhost:8080/cr_web_war_exploded/resources/bgpage/personalInfo/personalInfo.jsp" style="width: 100%; height: 100%"></iframe>'
            ,id: '31' //实际使用一般是规定好的id，这里以时间戳模拟下
        });
        element.tabChange('demo', '31')
    });

    //触发事件
    var active = {
        notice: function() {
            //公告层
            layer.open({
                type: 1
                ,title: false //不显示标题栏
                ,closeBtn: false
                ,area: '300px;'
                ,shade: 0.7
                ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                ,btn: ['知道了']
                ,btnAlign: 'c'
                ,moveType: 1 //拖拽模式，0或者1
                ,content: '<div style="padding: 30px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">暂无公告</div>'

            });
        }
        ,tabAdd: function(){
            //新增一个Tab项
            element.tabAdd('demo', {
                title: '新选项'+ (Math.random()*1000|0) //用于演示
                ,content: '内容'+ (Math.random()*1000|0)
                ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
            })
        }
        ,tabDelete: function(othis){
            //删除指定Tab项
            element.tabDelete('demo', '44'); //删除：“商品管理”


            othis.addClass('layui-btn-disabled');
        }


    };

    $('.site-demo-active,.notice').on('click', function(){
        var othis = $(this), method = othis.data('method');
        active[method] ? active[method].call(this, othis) : '';
    });


    //Hash地址的定位
    var layid = location.hash.replace(/^#test=/, '');
    element.tabChange('test', layid);

    element.on('tab(test)', function(elem){
        location.hash = 'test='+ $(this).attr('lay-id');
    });

});
