<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<section id="page-title" class="padding-top-15 padding-bottom-15">
  <div class="row">
    <div class="col-sm-7">
      <h1 class="mainTitle">修改仓库信息</h1>

    </div>
    <div class="col-sm-5">
    </div>
  </div>
</section>
 <div class="row" style="border-top: 10%">
	<div class="main-login col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-0 col-md-5">
		<div class="box-login">
			<form class="form-login" id="Form" action="<%=path %>/room/roomUpdate.do">
				<fieldset style="background:#007AFF; color:#00060B">
					<input type="hidden" id="r_id" name="r_id" value="${r.r_id}"/>
					<div class="form-group">
						仓库名称：<input type="text" class="form-control" value="${r.r_name }" id="r_name" name="r_name" placeholder="仓库名称">
					</div>
					<div class="form-group form-actions">
                      	仓库地址：<input select-address p="p" c="c" a="a" d="d" ng-model="xxx" id="r_area" name="r_area" placeholder="请选择所在地" type="text" class="form-control" />
					</div>
					<div class="form-group">
						仓库联系人：<input type="text" class="form-control" value="${r.r_lxr }" id="r_lxr" name="r_lxr" placeholder="仓库联系人">
					</div>
					<div class="form-group">
						联系人邮箱：<input type="email" class="form-control" value="${r.r_email }" id="r_email" name="r_email" placeholder="联系人邮箱">
					</div>
					<div class="form-group">
						联系人电话：<input type="text" class="form-control" value="${r.r_phone }" id="r_phone" name="r_phone" placeholder="联系人电话">
					</div>
					<input id="r_id" name="r_id" type="hidden" value=""/><!-- 仓库id -->
					<button type="button" onclick="quxiao();" class="btn btn-primary pull-right">
							取消 
					</button>
					<button type="button" onclick="doEdit();" class="btn btn-primary pull-right">
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
		$('#container').load('<%=path%>/room/queryAll.do');
	}
	function doEdit() {
		var r_id = $("#r_id").val();
		var r_name = $("#r_name").val();
		var r_area = $("#r_area").val();
		var r_lxr =$("#r_lxr").val();
		var r_email = $("#r_email").val();
		var r_phone = $("#r_phone").val();
		$.post(
			'<%=path%>/room/roomUpdate.do',
			{
				"r_id":r_id,
				"r_name":r_name,
				"r_area":r_area,
				"r_lxr":r_lxr,
				"r_email":r_email,
				"r_phone":r_phone,
			},
			function(data){
				if(data.result=="fail"){
					
				}else if(data.result=="seccuss"){
					$('#container').load('<%=path%>/room/queryAll.do');
				}
			});
	}
</script>
