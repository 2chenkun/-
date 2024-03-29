<%@page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>新增部门</title>
    <!-- 引入字体图标 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../css/25.css">
</head>
<style>
    * {
        /* 初始化 取消内外边距 */
        margin: 0;
        padding: 0;
    }

    body {
        /* 溢出隐藏 */
        overflow: hidden;
    }

    .navbar {
        /* 相对定位 */
        position: relative;
        /* 100%窗口宽度 */
        width: 100vw;
        display: flex;
    }

    .main {
        flex: 1;
        height: calc(100vh - 43px);
        position: relative;
        top: 43px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    #checkbox {
        display: none;
    }

    .navbar label {
        position: absolute;
        top: 0;
        left: 70px;
        width: 100%;
        height: 43px;
        font-size: 30px;
        color: #5a738e;
        background-color: #ededed;
        padding-left: 20px;
        border: 1px solid #d9dee4;
        cursor: pointer;
        /* 加个动画过渡 */
        transition: all 0.5s;
    }

    .navbar ul {
        list-style: none;
        width: 70px;
        /* 100%窗口高度 */
        height: 100vh;
        background-color: #2a3f54;
        transition: all 0.5s;
        overflow: hidden;
    }

    .navbar ul li {
        height: 70px;
        margin-bottom: 10px;
    }

    .navbar ul li:first-child {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0 10px;
    }

    .navbar ul li:first-child img {
        width: 50px;
        height: 50px;
        border-radius: 50%;
    }

    .navbar ul li:first-child span {
        /* 先把文字隐藏起来 */
        display: none;
        color: #fff;
        /* 文字禁止换行 */
        white-space: nowrap;
        padding-left: 10px;
    }

    .navbar ul li a {
        display: flex;
        justify-content: center;
        align-items: center;
        /* 垂直排列 */
        flex-direction: column;
        width: 100%;
        height: 100%;
        color: #d1d1d1;
        text-decoration: none;
    }

    .navbar ul li a i {
        font-size: 25px;
        margin-bottom: 10px;
    }

    .navbar ul li a span {
        font-size: 12px;
        white-space: nowrap;
    }

    .navbar ul li a:hover {
        color: #fff;
        background-color: #35495d;
    }

    /* :checked选择器是判断复选框是否被选中 */
    /* +是相邻兄弟选择器，找到input的下一个兄弟label */
    .navbar input:checked+label {
        left: 200px;
    }

    /* ~也是兄弟选择器，但它可以找到隔了几代的兄弟 */
    .navbar input:checked~ul {
        width: 200px;
    }

    .navbar input:checked~ul li:first-child {
        /* 将居中改为开头对齐 */
        justify-content: flex-start;
    }

    .navbar input:checked~ul li:first-child span {
        /* 文字显示 */
        display: block;
    }

    .navbar input:checked~ul li a {
        flex-direction: row;
        justify-content: flex-start;
    }

    .navbar input:checked~ul li a i {
        font-size: 18px;
        margin: 0 15px 0 30px;
    }

    .navbar input:checked~ul li a span {
        font-size: 14px;
    }
    input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    div.main {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
    }
</style>

<body>
<div class="navbar">
    <input type="checkbox" id="checkbox">
    <label for="checkbox">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </label>
    <ul>
        <li>
            <img src="img/tou.jpg" alt="">
            <span>欢迎您！管理员</span>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/dept/list">
                <i class="fa fa-home" aria-hidden="true"></i>
                <span>部门列表</span>
            </a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/dept/list1">
                <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                <span>管理列表</span>
            </a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/dept/list2">
                <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                <span>员工列表</span>
            </a>
        </li>
        <li>
            <a href="javascript:void(0)">
                <i class="fa fa-th-large" aria-hidden="true"></i>
                <span>新增部门</span>
            </a>
        </li>
    </ul>
    <div class="main">
        <div>
            <form action="<%=request.getContextPath()%>/dept/save" method="post">
                <input type="text" name="deptno" placeholder="输入编号">

                <input type="text" name="dname" placeholder="输入名称">

                <input type="text" name="loc" placeholder="输入位置">

                <input type="submit" value="保存">
            </form>
        </div>
    </div>
</div>
</body>

</html>