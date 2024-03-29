<%@ page import="com.bjpowernode.oa.bean.Dept" %>
<%@ page import="java.util.List" %>

<%--毙掉session对象。写上这个，内置对象就不能用了。--%>
<%--<%@page session="false" %>--%>

<%@page contentType="text/html;charset=UTF-8"%>
<%--<%@page import="java.util.List, com.bjpowernode.oa.bean.Dept" %>--%>
<%--<%@page import="java.util.List" %>
<%@page import="com.bjpowernode.oa.bean.Dept" %>--%>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

	<title>部门列表</title>
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

	a {
		color: black;
		text-decoration: none;
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

	button {
		height: 30%;
		width: 18%;
		margin-left: 5%;
	}

	.td1 {
		padding-left: 12%;
		padding-top: 35px;
		padding-bottom: 20px;
	}

	.td2 {
		padding-left: 11%;
		padding-top: 15px;
	}

	table tbody {
		display: block;
		height: 90%;
		overflow-y: auto;
		overflow-x: hidden;
	}

	table thead,
	tr {
		display: table;
		width:99%;
		table-layout:fixed;

	}

	table thead th {
		background: #00ccff;
	}
	table td,th{
		border-top:0;
		border-right:1px solid #999;
		border-bottom:1px solid #999;
		border-left: 0;
	}
	.td1 {
		border-left: 1px solid #999;
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
			<img src="http://localhost:8080/guanli/img/tou.jpg" alt="">
			<span>欢迎您！管理员</span>
		</li>
		<li class="li1">
			<a href="javascript:void(0)">
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
			<a href="<%=request.getContextPath()%>/add.jsp">
				<i class="fa fa-th-large" aria-hidden="true"></i>
				<span>新增部门</span>
			</a>
		</li>
	</ul>
		<div class="main">
			<table border="1px" align="center" width="100%" height="100%">
				<thead>
					<tr class="tr">
						<th>序号</th>
						<th>部门编号</th>
						<th>部门名称</th>
						<th>操作</th>
					</tr>
				</thead>
				<%
					List<Dept> deptList = (List<Dept>) request.getAttribute("deptList");
					// 循环遍历
					int i = 0;
					for (Dept dept : deptList) {
//					// 在后台输出
//					System.out.println(dept.getDname());
//					// 把部门名输出到浏览器
//					out.write(dept.getDname());


				%>
				<tr>
					<td class="td1"><%=++i%></td>
					<td class="td2"><%=dept.getDeptno()%></td>
					<td class="td2"><%=dept.getDname()%></td>
					<script type="text/javascript">
						function del(dno){
							var ok = window.confirm("亲，删了不可恢复哦！");
							if(ok){
								document.location.href = "<%=request.getContextPath()%>/dept/delete?deptno=" + dno;
							}
						}
						function xiugai(){
							window.location="<%=request.getContextPath()%>/dept/detail?f=edit&dno=<%=dept.getDeptno() %>";
						}
						function xiangqing(){
							window.location="<%=request.getContextPath()%>/dept/detail?f=detail&dno=<%=dept.getDeptno() %>";
						}
					</script>
					<td>
						<button onclick="del(<%=dept.getDeptno()%>)">删除</button>
						<button onclick="xiugai()">修改</button>
						<button onclick="xiangqing()">详情</button>
					</td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>
