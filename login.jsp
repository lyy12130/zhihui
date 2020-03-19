<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login</title>
<style>
/*大区域开始*/
body {
	background-image: url(../img/back.jpg);
}
/*大区域结束*/

/*登录大区域开始*/
.denglu{
	width: 400px;
	height: 350px;
	background-color:#FFF;
	box-shadow: 3px 3px 3px #0033CC;
	border-radius:3px;
	margin-top:90px;
	margin-left:850px;
}
/*登录大区域结束*/

/*用户登录文字开始*/
.userLogin{
	font-family: "宋体";
	color: #09F;
	padding-left: 20px;
	font-size:36px;
	padding-left:50px;
	padding-top:20px;
}
/*用户登录文字结束*/

/*用户名输入开始*/
.userName input{
	width:300px;
	height:30px;
	margin-left:50px;
	margin-top:40px;
	}
/*用户名输入结束*/

/*密码输入开始*/
.password{
	position:relative;
}
.password img{
            position: absolute;
            top: 2px;
            right: 50px;
            width: 30px;
			margin-top: 32px;
        }
.password input{
	width:300px;
	height:30px;
	margin-left:50px;
	margin-top:30px;
	}

/*密码输入结束*/

/*登录按钮开始*/
.loginButton input{
	width:300px;
	height:30px;
	margin-left:50px;
	margin-top:30px;
	background-color:#09F;
	border:none;
	font-family: "宋体";
	color:#FFF;
	font-size:18px;
	border-radius:4px;
	}
/*登录按钮结束*/

/*用户注册开始*/
.userLogon{display:inline-block;
margin-top:30px;
margin-left:50px;
}
.userLogon a{
	color: #09F;
}

/*用户注册结束*/

/*找回密码开始*/
.findPassword{
	display:inline-block;
	margin-top:30px;
	padding-left:170px;
}
.findPassword a{
	color:#b6b6b6;
}

/*找回密码结束*/

/*导航栏样式开始*/
li{ list-style:none;}
a{ text-decoration:none;}
ul{
	width:1100px;
	height:50px;
	margin-left:350px;
	margin-top:50px;
	}
li{
	float:left;  /*块显示加浮动收缩到内容大小*/
	margin-left:90px;
	font-family: "宋体";
	font-size:25px;
	}
li a{
	width:120px;
	height:40px;
	display:block;
	text-align:center;
	line-height:40px;
	color:#FFF;}
li a:hover{
	color:#06F;
	background-color:#FFF;
	border-radius:20px;
	}
/*导航栏样式结束*/
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
</style>

<script >
	function see(){
	// 1. 获取元素
	var eye = document.getElementById('eye');
	var pwd = document.getElementById('pwd');
	// 2. 注册事件 处理程序
	var flag = 0;
	eye.onclick = function() {
		// 点击一次之后， flag 一定要变化
		if (flag == 0) {
			pwd.type = 'text';
			eye.src = '../img/open.png';
			flag = 1; // 赋值操作
		} else {
			pwd.type = 'password';
			eye.src = '../img/close.png';
			flag = 0;
			}
		}
	}

	function welcome(){
		var btn = document.getElementById('button');
		var usersName = document.getElementById('usersName').value;
		alert('欢迎您'+ usersName + '!');
	}
</script>

</head>

<body>
    <ul>
        <li><a href="index.jsp"><strong>首&nbsp;&nbsp;页</strong></a></li>
        <li><a href="fazhan.jsp"><strong>发&nbsp;&nbsp;展</strong></a></li>
        <li><a href="luntan.jsp"><strong>论&nbsp;&nbsp;坛</strong></a></li>
        <li><a href="shopping.jsp"><strong>购&nbsp;&nbsp;物</strong></a></li>
        <li><a href="#"><strong>个人中心</strong></a></li>
    </ul>

    
<div class="denglu">
        <div class="userLogin"><strong>登   录</strong></div>
        
        <div class="userName">
        	<form>
            	<input type="text" placeholder="用户名"  id="usersName"/>
            </form>
        </div>
        
        <div class="password">
        	<form>
				<label>
					<img src="../img/close.png" id="eye" onclick="see()">
				</label>
            	<input type="password" placeholder="密码" id="pwd"/>
            </form>
        </div>

        <div class="loginButton">
        	<input type="button" value="登&nbsp;&nbsp;录" onclick="welcome()"/>
        </div>
        <div class="userLogon"><strong><a href="logon.jsp">用户注册</a></strong></div>
        
        <div class="findPassword"><strong><a href="#">忘记密码？</a></strong></div>
        
	</div>
</body>
</html>
