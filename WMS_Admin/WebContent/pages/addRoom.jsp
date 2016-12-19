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
 <div class="row" style="border-top: 10%">
	<div class="main-login col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-0 col-md-5">
		<div class="box-login">
			<form class="form-login" id="Form" action="<%=path %>/room/addRoom.do">
				<fieldset style="background:#007AFF; color:#00060B">
					<div class="form-group">
						仓库名称：<input type="text" class="form-control" id="r_name" name="r_name" placeholder="仓库名称">
					</div>
					<div class="form-group form-actions">
                      	仓库地址：<input select-address p="p" c="c" a="a" d="d" ng-model="xxx" id="r_area" name="r_area" placeholder="请选择所在地" type="text" class="form-control" />
					</div>
					<div class="form-group">
						仓库联系人：<input type="text" class="form-control" id="r_lxr" name="r_lxr" placeholder="仓库联系人">
					</div>
					<div class="form-group">
						联系人邮箱：<input type="email" class="form-control" id="r_email" name="r_email" placeholder="联系人邮箱">
					</div>
					<div class="form-group">
						联系人电话：<input type="text" class="form-control" id="r_phone" name="r_phone" placeholder="联系人电话">
					</div>
					<input id="r_id" name="r_id" type="hidden" value=""/><!-- 仓库id -->
					<button type="button" onclick="quxiao();" class="btn btn-primary pull-right">
							取消 
					</button>
					<button type="button" id="submitForm" class="btn btn-primary pull-right">
							提交 <i class="fa fa-arrow-circle-right"></i>
					</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<script src="js/plugins/jquery/dist/jquery.min.js" type="text/javascript"></script>
<script src="js/plugins/angular/angular.min.js" type="text/javascript"></script>
<script src="js/selectAddress2.js" type="text/javascript"></script>
<script src="js/index.js" type="text/javascript"></script>
<script type="text/javascript">
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
	    var currentdate = "ck"+date.getFullYear() + month  + strDate + hour + min + sec;
	    document.getElementById("r_id").value=currentdate;
	});
	$("#submitForm").click(function(){
		$.post("room/addRoom.do",
			$("#Form").serialize(),
	            function(data){
					if(data.result=="fail"){
						
					}else if(data.result=="seccuss"){
						$('#container').load('<%=path%>/room/queryAll.do');
					}
				}
	   	)
	})
</script>
