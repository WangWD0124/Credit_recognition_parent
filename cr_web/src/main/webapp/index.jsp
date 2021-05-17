<%--
  Created by IntelliJ IDEA.
  User: 刘力皓
  Date: 2021/5/8
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>专业选修课学分认定-教师端</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <script type="text/javascript" src="webjars/layui/2.5.7/layui.js"></script>
    <script src="resources/js/main/index.js"></script>
    <link rel="stylesheet" href="webjars/layui/2.5.7/css/layui.css" media="all" />
    <link rel="stylesheet" href="resources/css/main/index.css" media="all" />
</head>

<body>
<div class="layui-layout layui-layout-admin">

    <!-- 头部区域 -->
    <div class="layui-header">
        <div class="logo"><h3>专业选修课学分认定平台</h3></div>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="javascript:;" data-method="notice" class="notice">系统公告</a></li>
            <li class="layui-nav-item"><a href="javascript:;">锁屏</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="resources/images/login_badge.jpg" class="layui-nav-img">
                    某某某
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/personalInfo/personalInfo.jsp" target="demo">个人信息</a></dd>
                    <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/personalInfo/changePassword.jsp" target="demo">修改密码</a></dd>
                    <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/creditRecognition/certificate.jsp" target="demo">查看证书</a></dd>
                    <dd><a href="javascript:;">退出</a></dd>
                </dl>
            </li>

        </ul>
    </div>

    <!-- 左侧导航区域 -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">

            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item">
                    <a href="javascript:;" >年级信息管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/gradeInfoManage/majormanage.jsp" target="demo">专业管理</a></dd>
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/gradeInfoManage/classmanage.jsp" target="demo">班级管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">人员信息管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/personalInfoManage/add_person.jsp" target="demo">信息添加</a></dd>
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/personalInfoManage/find_person.jsp" target="demo">信息查询与改删</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">教学计划管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/teachingPlanManage/Home_Plan.jsp" target="demo">录入教学计划</a></dd>
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/teachingPlanManage/ExaminePlan.jsp" target="demo">审核教学计划</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">学分认定管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/pcpage/creditRecognition/creditRecognition_input.jsp"  target="demo">学分认定申请</a></dd>
                        <dd><a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/creditRecognition/creditRecognition_audit.jsp"  target="demo">学分认定审核</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/noticeManage/noticeManage.jsp"  target="demo">系统公告管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="http://localhost:8080/cr_web_war_exploded/resources/bgpage/privilegeManage/privilegeManage.jsp" target="demo">权限管理</a>
                </li>

            </ul>
        </div>
    </div>

    <!-- 内容主体区域 -->
    <div class="layui-body">

        <div>
            <div class="layui-tab" lay-filter="demo" lay-allowclose="true">
                <ul class="layui-tab-title">

                    <li class="layui-this" lay-id="11">首页</li>
                    <!--
                    <li lay-id="22">用户管理</li>
                    <li lay-id="33">权限分配</li>
                    <li lay-id="44">商品管理</li>
                    <li lay-id="55">订单管理</li>
                    -->

                </ul>
                <div class="layui-tab-content">
                    <iframe class="iframe_right" src="" name="demo" frameborder="0" ></iframe>
                </div>
            </div>
        </div>
    </div>

    <!-- 底部固定区域 -->
    <div class="layui-footer">

    </div>
</div>



</body>
</html>
