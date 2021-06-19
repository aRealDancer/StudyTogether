<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link  href="css/login.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
</head>
<body>
	
<div class="container">
	<div class="containerTitle"><div class="title">登 录</div></div>
	<div class="form">
	<form action="${pageContext.request.contextPath}/login.action"  method="post" >
		<table>
		<tr>
		<td><input type="text" name="account" id="account" placeholder="账号"/></td>
		</tr>
		
		<tr>
		<td><input type="password" name="password" id="password" placeholder="密码"/></td>
		</tr>
		
		<tr>
		<td ><input type="submit" class="button" value="登录 " id="submit"  /></td>
		</tr>
		
		
		<tr>
		<td >没有账号？<a href="register.jsp" >立即注册</a></td>
		</tr>
		
		
		</table>
		
	</form>

	</div>
</div>
</body>
</html>