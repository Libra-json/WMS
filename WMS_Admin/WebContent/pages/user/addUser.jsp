<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<section id="page-title" class="padding-top-15 padding-bottom-15">
  <div class="row">
    <div class="col-sm-7">
      <h1 class="mainTitle">创建仓库</h1>

    </div>
    <div class="col-sm-5">
    </div>
  </div>
</section>
<form role="form" id="form" action="<%=path %>/user/addUser.do">
	<div class="row col-sm-offset-1" style="width: 800px;height: 800px;">
		<fieldset style="background:#CBE9CF; color:#00060B">
			<div class="col-md-6">
				<div class="form-group">
					名称：<input type="text" class="form-control" id="u_name" name="u_name" onchange="a_name();" placeholder="请输入名称">
					<p id="zhts" style="color: red;margin-left:10px;"></p>
					密码：<input type="password" class="form-control" id="u_pwd" name="u_pwd" onchange="a_pwd();" placeholder="请输入密码">
					<p id="mmts" style="color: red;margin-left:10px;"></p>
				</div>
				<div class="form-group">
					年龄：<input type="text" class="form-control" id="u_age" name="u_age" onchange="a_age();" placeholder="请输入年龄">
					<p id="ages" style="color: red;margin-left:10px;"></p>
					性别：<div class="clip-radio radio-primary">
						<input type="radio" value="男" name="u_sex" id="gender_female" checked>
						<label for="gender_female" style="color:#000509;">
							男
						</label>
						<input type="radio" value="女" name="u_sex" id="gender_male">
						<label for="gender_male" style="color:#000509;">
							女
						</label>
					</div>
					<p id="sexs" style="color: red;margin-left:10px;"></p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					电话：<input type="text" class="form-control" onchange="a_phone();" id="u_phone" name="u_phone" placeholder="请输入电话号码">
					<p id="phones" style="color: red;margin-left:10px;"></p>
					邮箱：<input type="email" class="form-control" style="float: top;" id="u_email" name="u_email" placeholder="请输入邮箱">
					<p id="emails" style="color: red;margin-left:10px;"></p>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-md-10">
							<input type="hidden" id="u_ck" name="u_ck" value="${room.r_id }"/>
							管理仓库：<input type="text" class="form-control" readonly="readonly" name="r_name" value="${room.r_name }" placeholder="选择仓库">
						</div>
						<div class="col-md-2">
						<br/>
							<a style="margin-top: 10%;" onClick="xuanzhe();" href="javascript:;" title="查看选择">选择仓库</a>
						</div>
					</div>
					<p id="cks" style="color: red;margin-left:10px;"></p>
					身份证号码：<input type="text" class="form-control" onchange="a_cardid();" id="u_cardid" name="u_cardid" placeholder="请输入身份证号码">
					<p id="cardids" style="color: red;margin-left:10px;"></p>
				</div>
			</div>
			<input id="u_id" name="u_id" type="hidden" value=""/><!-- 仓库id -->
			<button type="button" onclick="quxiao();" class="btn btn-primary pull-right" style="margin-left: 20px;">
					取消 
			</button>
			<button type="button" id="submitForm" class="btn btn-primary pull-right">
					提交 <i class="fa fa-arrow-circle-right"></i>
			</button>
		</fieldset>
	</div>
</form>
<script src="js/plugins/jquery/dist/jquery.min.js" type="text/javascript"></script>
<script src="js/plugins/angular/angular.min.js" type="text/javascript"></script>
<script src="js/selectAddress2.js" type="text/javascript"></script>
<script src="js/index.js" type="text/javascript"></script>
<script type="text/javascript">
	
	function xuanzhe(){
		$('#container').load('<%=path%>/room/queryByRoom.do');
	}
	function quxiao(){
		$('#container').load('pages/home.jsp');
	}
	$(function(){
		var date = new Date();
	    var month = date.getMonth() + 1;
	    var strDate = date.getDate();
	    var hour=date.getHours();
	    var min=date.getMonth();
	    var sec=date.getSeconds();
	    if (month >= 1 && month <= 9) {
	        month = "0" + month;
	    }
	    if (strDate >= 0 && strDate <= 9) {
	        strDate = "0" + strDate;
	    }
	    var currentdate = "cg"+date.getFullYear() + month  + strDate + hour + min + sec;
	    document.getElementById("u_id").value=currentdate;
	});
	$("#submitForm").click(function(){
		$.post("user/addUser.do",
			$("#form").serialize(),
	            function(data){
					if(data.result=="fail"){
						
					}else if(data.result=="seccuss"){
						$('#container').load('<%=path%>/user/queryAll.do');
				}
			}
	  	)
	})
	function a_name(){
		document.getElementById("zhts").innerHTML = '';
		var u_name = document.getElementById("u_name").value;
		if (u_name == "") {
			document.getElementById("zhts").innerHTML = '*用户名不可为空！';
        }if(u_name.length<2 || u_name.length>12){
        	document.getElementById("zhts").innerHTML = '*用户名不可小于2位或大于12位！';
        }
	}
	
	function a_pwd(){
		document.getElementById("mmts").innerHTML = '';
		var u_pwd = document.getElementById("u_pwd").value;
		if (u_pwd == "") {
			document.getElementById("mmts").innerHTML = '*密码不可为空！';
        }if(u_pwd.length<6 || u_pwd.length>20){
     		document.getElementById("mmts").innerHTML = '*密码不可小于6位或大于20位！';
    	}
	}
	
	function a_age(){
		document.getElementById("ages").innerHTML = '';
		var u_age = document.getElementById("u_age").value;
		if (u_age == "") {
			document.getElementById("ages").innerHTML = '*年龄不可为空！';
        }if(u_age<18 || u_age>100){
        	document.getElementById("ages").innerHTML = '*年龄不可小于18或大于100！';
        }
	}
	
	function a_phone(){
		document.getElementById("phones").innerHTML = '';
		var u_phone = document.getElementById("u_phone").value;
		var reg = /^0?1[3|4|5|8][0-9]\d{8}$/;
		if (u_phone == "") {
			document.getElementById("phones").innerHTML = '*手机号码不可为空！';
        }if (!reg.test(u_phone)) {
	 		document.getElementById("phones").innerHTML = '*请输入正确的手机号码！';
	 	}
	}
	
	function a_cardid(){
		document.getElementById("cardids").innerHTML = '';
		var u_cardid = document.getElementById("u_cardid").value;
		var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;  
		if (u_cardid == "") {
			document.getElementById("cardids").innerHTML = '*身份证号码不可为空！';
        }if(reg.test(u_cardid) === false)  {  
			document.getElementById("cardids").innerHTML = '*请输入正确的身份证号码！';
		}  
	}
	
</script>
