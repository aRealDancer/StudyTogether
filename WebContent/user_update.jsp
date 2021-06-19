<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息修改</title>
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/update_form.css">
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
	<div class="login_box">
		<!-- 修改留言的表单 -->
			<form action="${pageContext.request.contextPath }/userupdate.action" method="post">
			<table>
			<tr><th>修改用户信息</th></tr>
				<input type="hidden" name="id"  value="${user.id }"  />
				
				<tr>
				<td>账号：
				<input class="it" id="t-txt" type="text" name="account" value="${user.account}" />
				</td>
				</tr>
				
				<tr>
				<td>
				姓名：<input class="it" id="t-txt" type="text" name="username" value="${user.username}"  />
				</td>
				</tr>
				
				<tr>
				<td>
				密码：<input class="it" id="t-txt" type="text" name="password" value="${user.password}"  />
				</td>
				</tr>
				
				<tr>
				<td>
				角色：<input class="it" id="t-txt" type="text" name="role" value="${user.role}" />
				</td>
				</tr>
				
				<tr>
				<td>
				<input id="login_btn" type="submit" value="确认修改" />
				</td>
				</tr>
				
				
				
			</table>	
			</form>
		</div>
</div>


</body>
</html>