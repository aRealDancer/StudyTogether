<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <!-- 引入JSTL标签库 -->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<link rel="stylesheet" href="./css/index.css" />
<link rel="stylesheet" href="./css/table.css" />
</head>
<body>
<div class="header">
<div class="logo-wapper clearfix">
	<div class="logo">
		<a href="#"></a>
	</div>	
</div>
<div class="top-bar clearfix">
	<div class="user_arr">
		<a href="userlist.action">用户管理</a>
	</div>
	<div class="test_arr">
		<a href="#">题目管理</a>
	</div>
	<div class="score_arr">
		<a href="#">成绩管理</a>
	</div>	
</div>
</div>

<div class="main">
<table>
			<tr>
				<th>id</th>
				<th>账号</th>
				<th>姓名</th>
				<th>角色</th>
				<th>操作一</th>
				<th>操作二</th>
			</tr>
		<c:forEach items="${user}" var="user">
			 <tr>
			 	<td>${user.id}</td>
			 	<td>${user.account}</td>
				<td>${user.username}</td>
				<td>${user.role}</td>
				<td><button class="delete" onclick="del(${user.id})" >删除</button></td>
				<td><button class="update" onclick="ready(${user.id})">修改</button></td>
			</tr>
		</c:forEach>
		</table>
	<button class="add" onclick="JavaScript:window.location.href='user_add.jsp';">添加用户</button>
</div>

		<script type="text/javascript">
			//定义一个del函数 
			function del(id){
				if(window.confirm("您确定要删除吗")){
					//向后台发送删除的请求，传递id
					window.location.href = "${pageContext.request.contextPath}/userdelete.action?id=" + id;
				}
			}
			function ready(id){
				if(window.confirm("您确定要修改吗")){
					//向后台发送修改的请求，传递id 
					window.location.href = "${pageContext.request.contextPath}/userready.action?id=" + id;
				}
			}
		</script>
</body>

</html>