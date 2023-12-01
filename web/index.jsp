<%--
  Created by IntelliJ IDEA.
  User: ck
  Date: 2023/11/29
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录</title>
    <link rel="stylesheet" href="./css/indes.css">
  </head>
  <body>
  <div class="container">
    <!-- 登录 -->
    <form action="<%=request.getContextPath()%>/user/login" method="post">
      <div class="login-box">
        <div class="apple-btn login-apple">
          <li class="red-btn"></li>
          <li class="yellow-btn"></li>
          <li class="green-btn"></li>
        </div>
        <div class="title">登录</div>
        <div class="input">
          <input type="text" id="login-user" placeholder="输入账号" name="login-user">
        </div>
        <div class="input">
          <input type="password" id="login-password" placeholder="输入密码" name="login-password">
        </div>
        <button class="btn login-btn">登录</button>
        <!-- <div class="btn login-btn">
        <span>登录</span>
    </div> -->
        <div class="change-box login-change">
          <div class="change-btn toSign">
            <span>去注册</span>
          </div>
        </div>
      </div>
    </form>
    <!-- 注册 -->
    <form action="<%=request.getContextPath()%>/user/login">
      <div class="sign-box">
        <div class="apple-btn sign-apple">
          <li class="red-btn"></li>
          <li class="yellow-btn"></li>
          <li class="green-btn"></li>
        </div>
        <div class="title">注册</div>
        <div class="input">
          <input type="text" id="sign-user" placeholder="输入一个账号">
        </div>
        <div class="input">
          <input type="password" id="sign-password" placeholder="输入密码">
        </div>
        <div class="input">
          <input type="password" id="sign-password1" placeholder="确认密码">
        </div>
        <button class="btn login-btn">注册</button>
        <!-- <div class="btn sign-btn">
        <span>注册</span>
    </div> -->
        <div class="change-box sign-change">
          <div class="change-btn toLogin">
            <span>去登陆</span>
          </div>
        </div>
      </div>
    </form>
  </div>

  <script src="./js/index.js"></script>


  </body>
</html>
