 function Show(){
        document.getElementById('shade').classList.remove('hide');
        document.getElementById('modal').classList.remove('hide');
    }
function Hide(){
        document.getElementById('shade').classList.add('hide');
        document.getElementById('modal').classList.add('hide');
    }
//注册验证
function validate() {
			var acc = document.getElementById("account").value;
    	    var pwd1 = document.getElementById("password").value;
    	    var pwd2 = document.getElementById("repassword").value;
    	 if(acc==""){
    	    	alert("请输入账号！");//检测到账号为空，提醒输入//
    	    	document.form1.account.focus();//焦点放到密码框
    	    	return false;//退出检测函数
    	    	}//如果允许空密码，可取消这个条件
    	 if(pwd1==""){
    	    	alert("请输入密码！");//检测到密码为空，提醒输入//
    	    	document.form1.pwd1.focus();//焦点放到密码框
    	    	return false;//退出检测函数
    	    	}//如果允许空密码，可取消这个条件
	    if(pwd1 == pwd2)
    	     {
    	        document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
    	        document.getElementById("button").disabled = false;
    	     }
    	else {
    	        document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
    	        document.getElementById("button").disabled = true;
    	     }
    	}