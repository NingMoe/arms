<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title>ARMS系统登录页</title>
<script src="js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="js/frame/jquery.Cookie.js" type="text/javascript"></script>
<script src="js/sha1.js" type="text/javascript"></script>
<style type="text/css" media="screen">
body {
	margin: 0px;
	font-size: 12px;
	background-color: #c2dbd9;
}

/*控制背景色显示高度*/
#topData {
	margin: 0px;
	width: 100%;
	height: 620px;
}

#loginForm {
	height: 380px;
	background-color: #c2dbd9; /*border:1px white dotted;*/
	position: absolute;
	text-align: center; /*left:350px;
	top:50px;*/
	top: 10%;
	left: 24%;
}

#login {
	background-image: url(loginImage/logo-280.png);
	background-repeat: no-repeat;
	width: 340px;
	height: 61px;
	position: absolute;
	left: -100px;
	top: -30px;
}

#sagLogin {
	background-image: url(loginImage/SAGLogo-280.png);
	background-repeat: no-repeat;
	width: 280px;
	height: 77px;
	position: absolute;
	left: 230px;
	top: 50px;
}

/*控制整个登录框位置,但是不包括BossLogo*/
#loginFormBg {
	background-image: url(loginImage/sagFormLogo-601.png);
	background-repeat: no-repeat;
	width: 601px;
	height: 254px;
	position: absolute;
	left: 60px;
	top: 140px;
}

#spanErr {
	position: absolute;
	left: 110px;
	top: 200px;
}

#loginTishi {
	width: 800px;
	position: relative;
	top: 260px;
}

#loginTishi p {
	float: left;
	font-size: 18px;
	color: #8b4d4c;
	font-family: 微软雅黑;
	font-weight: bold;
}

#loginName {
	background-image: url(loginImage/textBox-286.png);
	background-color: transparent;
	background-repeat: no-repeat;
	height: 30px;
	width: 286px;
	border: 0px;
	font-size: 28px;
	position: absolute;
	left: 110px;
	top: 60px;
	padding-left: 10px;
}

#password {
	background-image: url(loginImage/textBox-286.png);
	background-color: transparent;
	background-repeat: no-repeat;
	height: 30px;
	width: 286px;
	border: 0px;
	font-size: 28px;
	position: absolute;
	padding-left: 10px;
	left: 110px;
	top: 140px;
}

#spanUser {
	position: absolute;
	left: 113px;
	top: 35px;
	color: #8b4d4c; /* color: #8b4d4c;*/
	font-size: 14px;
	font-weight: bold;
}

#spanPwd {
	position: absolute;
	left: 110px;
	top: 114px;
	color: #8b4d4c; /* color: #8b4d4c;*/
	font-size: 14px;
	font-weight: bold;
}

#spanForgetPwd {
	position: absolute;
	left: 300px;
	top: 116px;
	color: #1099dd;
	font-size: 14px;
	font-weight: bold;
}

#loginBtn {
	position: absolute;
	left: 422px;
	top: 75px;
}

#forgetPwd {
	position: absolute;
	left: 105px;
	top: 160px;
	color: #8b4d4c;
	font-size: 14px;
	font-weight: bold;
}

#loginDanChu {
	position: absolute;
	left: 265px;
	top: 160px;
	color: #8b4d4c;
	font-size: 14px;
	font-weight: bold;
}

.chkLogin {
	
}
</style>
</head>
<body onkeydown="loginKey(event);">
    <div id="topData">
        <div id="loginForm">
            <div id="sagLogin"></div>
            <div id="loginFormBg">
                <!--登录框 start-->
                <span id="spanUser">用户名</span> <span id="spanPwd">密&nbsp;&nbsp;码</span>
                <div>
                    <input name="loginName" type="text" maxlength="20"	id="loginName" />
                    <div>
                        <input name="password" type="password" maxlength="20" id="password" />

                        <div id="loginBtn">
                            <input type="image" name="loginImgBtn" id="loginImgBtn"
                                src="loginImage/btn.png" onclick="doLogin()"
                                style="border-width: 0px; width: 100px; height: 100px;" />
                        </div>
                        <span style="color: red; font-weight: bold;" id="spanErr"></span>
                    </div>
                    <div id="loginTishi">
                        <p>
                            <input type="checkbox" class="chkLogin" id="chkJiZhuPwd" />
                            <label for="chkJiZhuPwd">在此电脑记住用户名</label>
                        </p>
                    </div>
                </div>
                <!--登录框 end-->
            </div>
        </div>
    </div>
</body>
<script language="javascript" type="text/javascript">
	var browserTip = "您好，本系统尚未完成所有浏览器的兼容性测试，为了确保系统正常稳定的运行，请使用火狐浏览器运行本系统！";
	function browserCheckFailed(){		
		if($.browser.mozilla){
			return false;
		}else{
			return true;
		}
	}

	//登录框绝对定位
	$(function() {
		if(top.location != location){ 
			top.location.href= location.href; 
		} 
		//加载cookies
		if ($.cookie('txtUserName') != undefined
				&& $.cookie('txtUserName') != ""
				&& $.cookie('txtUserName') != 'null') {
			document.getElementById("chkJiZhuPwd").checked = true;
			$("#loginName").val($.cookie('txtUserName'));
		}
		
		if(browserCheckFailed()){			
			alert(browserTip);	
		}
	});

	function doLogin() {		
		if(browserCheckFailed()){			
			alert(browserTip);
			return;
		}

		if ($("#loginName").val() == "") {
			$("#spanErr").html("登录名不能为空!");
			return;
		}
		if ($("#password").val() == "") {
			$("#spanErr").html("密码不能为空!");
			return;
		}

		//写入cookies
		if (document.getElementById("chkJiZhuPwd").checked == true) {
			$.cookie('txtUserName', $("#loginName").val());
		} else {
			$.cookie('txtUserName', null);
		}
		
		$.post("accessCheck.action",{
			"loginName" : $("#loginName").val(),
			"password" : $("#password").val()
		},function(result){
			if (result.errorMsg != "") {
				$("#spanErr").html(result.errorMsg);
			}else{
				top.location.href= "index/default.action"; 
			}
		},"json");
	}

	function loginKey(evt) {
		var event = arguments[0]||window.event;
		if (event.keyCode == 13) {
			doLogin();
		}
	}
</script>
</html>