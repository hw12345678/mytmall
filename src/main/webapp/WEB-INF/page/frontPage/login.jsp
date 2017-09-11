<%--
  Created by IntelliJ IDEA.
  User: warframe
  Date: 2017/9/11
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@include file="../include/header.jsp"%>


<!--登录-->
<div class="loginDiv">
    <div class="loginImg">
        <img src="img/site/simpleLogo.png" alt="图片加载失败">
    </div>
    <div class="loginBackgroundImg">
        <img src="img/site/loginBackground.png" alt="图片加载失败">
    </div>


    <!--登录的表单框-->
    <div class="loginFormDiv">
        <form class="loginForm" action="<%=request.getContextPath()%>/loginUser.do" method="post">
            <!--错误消息的相关显示-->
            <div class="loginErrorMessageDiv">
                <div class="alert alert-danger" >
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                    <span class="errorMessage"></span>
                </div>
            </div>
            <div class="loginTitle">账户登录</div>
            <div class="loginInput">
                <span class="glyphicon glyphicon-user"></span>
                <input id="name" name="name" type="text" placeholder="手机/会员名/邮箱">
            </div>
            <div class="loginInput">
                <span class="glyphicon glyphicon-lock"></span>
                <input id="password" name="password" type="password" placeholder="密码">
            </div>

            <div class="loginLink">
                <a href="#">忘记登录密码</a>
                <a href="#" class="pull-right">免费注册</a>
            </div>

            <div class="loginButtonDiv">
                <button class="btn btn-block redButton" type="submit">登录</button>
            </div>
        </form>

    </div>
</div>
<!--背景色-->
<div class="loginBackground"></div>



<!--交互-->
<script>
    $(function () {
        $("div.loginErrorMessageDiv").hide();

        <c:if test="${!empty msg}">
        $("span.errorMessage").html("${msg}");
        $("div.loginErrorMessageDiv").show();
        </c:if>



        $("form.loginForm").submit(function () {
            if(0==$("#name").val().length||0==$("#password").val().length){
                $("span.errorMessage").html("请输入账号密码");
                $("div.loginErrorMessageDiv").show();
                return false;
            }
            return true;
        });

    })
</script>


<%@include file="../include/footer.jsp"%>
