<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link  href="css/login.css" rel="stylesheet" type="text/css" />
<head>
<script type="text/javascript" src="js/myjs.js"> 
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>

<div class="container">
	<div class="containerTitle"><div class="title">注 册</div></div>
	<div class="form">
	<form action="${pageContext.request.contextPath}/usersave.action" method="post">
		<table>
	
		<tr>
		<td>账&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp号：</td>
		<td><input type="text" name="account" id="account" /></td>
		</tr>
		
		<tr>
		<td>姓&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名：</td>
		<td><input type="text" name="username" id="username" /></td>
		</tr>
	
		<tr>
		<td>密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：</td>
		<td><input type="password" name="password" id="password"/></td>
		</tr>
	
		<tr>
		<td>确认密码：</td>
		<td><input type="password" name="repassword"  id="repassword" onblur="validate()"/></td>
		<td><span id="tishi"></span></td>
		</tr>
		
		<tr>
		<td></td>
		<td ><input type="submit" class="button" value="注册" id="submit"  /></td>
		</tr>
		
		</table>
	</form>
	</div>
</div>
</body>

</html>