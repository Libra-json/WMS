<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>登录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<link rel="shortcut icon" href="assets/ico/cat.ico">
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
	</head>

	<body class="login">
		<div class="row">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
				<div class="logo margin-top-30">
					<img src="assets/images/logo.png" alt="Clip-Two"/>
				</div>
				<div class="box-login">
					<form class="form-login" id="Form" action="user/login.do">
						<fieldset>
							<legend>
								登录到您的帐户
							</legend>
							<p>
								请输入你的账号和密码登录.
							</p>
							<div class="form-group">
								<span class="input-icon">
									<input type="text" class="form-control" id="u_name" name="u_name" onchange="a_name();" placeholder="用户名/手机号码">
									<i class="fa fa-user"></i>
								</span>
							</div>
							<p id="zhts" style="color: red;margin-left:30px;"></p>
							<div class="form-group form-actions">
								<span class="input-icon">
									<input type="password" class="form-control password" name="u_pwd" id="u_pwd" onchange="a_pwd();" placeholder="密码">
									<i class="fa fa-lock"></i>
									
									<a class="forgot" href="pages/forgot.html">
										忘记密码
									</a> 
								</span>
							</div>
							<p id="mmts" style="color: red;margin-left:30px;"></p>
							<div class="form-group form-actions">
								<span class="input-icon">
									<i class="ti-quote-left"></i>
									<input type="text" class="form-control u_yzm" id="u_yzm" name="u_yzm" onchange="a_yzm();" placeholder="验证码">
									
								</span>
							</div>
							<p id="yzmts" style="color: red;margin-left:30px;"></p>
							<div class="form-actions">
								<div style="margin-left: 70px;float: left;">
									<img src="<%=path %>/checkCodeAction/service.do" id="imgcod" 
									onclick="randcord(); " title="点击图片刷新验证码"/>
								</div>
								<button type="button" id="submitForm" class="btn btn-primary pull-right" onclick="return checkDL();">
								
									登录 <i class="fa fa-arrow-circle-right"></i>
									
								</button>
									
							</div>
							
						</fieldset>
					</form>
					<div class="copyright">
						&copy; <span class="current-year"></span><span class="text-bold text-uppercase"> HT物流项目组版权所有</span>. <span>翻版必究</span>
					</div>
				</div>
			</div>
		</div>
		
		<script src="assets/js/jquery-3.1.1.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
		<script src="assets/js/main.js"></script>
		
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
			
			
			function randcord(){
				document.getElementById("imgcod").src='<%=path %>/checkCodeAction/service.do?'+ Math.random();
			}
		
			/* 按回车键进行登录 */
			document.onkeydown=function(event){
				 if (event.keyCode==13){ //回车键的键值为13
					 checkDL();
				 }
			}
			
			function a_name(){
				document.getElementById("zhts").innerHTML = '';
				var u_name = document.getElementById("u_name").value;
	            	if (u_name == "") {
						document.getElementById("zhts").innerHTML = '*用户名不可为空！';
		            }else if(u_name.length<2 || u_name.length>12){
		            	document.getElementById("zhts").innerHTML = '*用户名不可小于2位或大于12位！';
		            }
			}
			
			function a_pwd(){
				document.getElementById("mmts").innerHTML = '';
				var u_pwd = document.getElementById("u_pwd").value;
	            	if(u_pwd == ""){
		            	document.getElementById("mmts").innerHTML = '*密码不可为空！';
		            }else if(u_pwd.length<6 || u_pwd.length>20){
		            	document.getElementById("mmts").innerHTML = '*密码不可小于6位或大于20位！';
		            }
			}
			
			function a_yzm(){
				document.getElementById("yzmts").innerHTML = '';
				var u_pwd = document.getElementById("u_yzm").value;
					if(u_yzm == ""){
		            	document.getElementById("yzmts").innerHTML = '*验证码不可为空！';
		            }
			}
			
			function checkDL(){
	            var u_name = document.getElementById("u_name").value;
	            var u_pwd = document.getElementById("u_pwd").value;
	            var u_yzm = document.getElementById("u_yzm").value;
            	if (u_name == "") {
					document.getElementById("zhts").innerHTML = '*用户名不可为空！';
					return false;
	            }else if (u_pwd == "") {
					document.getElementById("mmts").innerHTML = '*密码不可为空！';
					return false;
	            }else if (u_yzm == "") {
					document.getElementById("yzmts").innerHTML = '*验证码不可为空！';
					return false;
	            }else{
	            	$.post("<%=path%>/user/login.do",
	    	            	{"u_name":u_name,"u_pwd":u_pwd,"u_yzm":u_yzm},
	    	            	function(data) {
	    						if(data.result=="fail"){
	    							document.getElementById("mmts").innerHTML = data.errorMsg;
	    							randcord();/* 重新加载验证码 */
	    						}else if(data.result=="seccuss"){
	    							window.location.href = "<%=path%>/index.jsp";
	    						}
	    					}
	    				);
	            }
			}
		</script>
	</body>
</html>