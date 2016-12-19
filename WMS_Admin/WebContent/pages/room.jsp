<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<section id="page-title" class="padding-top-15 padding-bottom-15">
  <div class="row">
    <div class="col-sm-7">
      <h1 class="mainTitle">仓库管理</h1>

    </div>
    <div class="col-sm-5">

    </div>
  </div>
</section>
<div class="row">
	<c:forEach items="${room}" var="c">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="assets/images/lion-403764_640.jpg" alt="">
					<div class="caption" style="word-break:break-word;">
						<p>
							联系人：${c.r_lxr}
							<br />
							仓库名称：${c.r_name}
							<br />
							仓库地址：${c.r_area}
						</p>				
						<p>
							<a href="javascript:;" onClick="query('${c.r_id}')" class="btn btn-o btn-danger">
								查看详情
							</a>
							<a href="javascript:;" onClick="doEdit('${c.r_id}')" class="btn btn-o btn-primary">
								修改信息
							</a>
							<a href="javascript:;" onClick="delete1('${c.r_id}')" class="btn btn-o btn-primary">
								删除
							</a>
						</p>
					</div>
				</div>
			</div>
		
	</c:forEach>
</div>
<script type="text/javascript">
	function delete1(id){
		$.post("<%=path%>/room/roomDelete.do",
				{
					"r_id":id
				},
		            function(data){
						if(data.result=="fail"){
							
						}else if(data.result=="seccuss"){
							alert("删除成功");
							$('#container').load('<%=path%>/room/queryAll.do')
						}
					}
		   	)
	}
	function query(id){
		$('#container').load('<%=path%>/room/roomDetails.do?r_id='+id)
	}
	function doEdit(id){
		$('#container').load('<%=path%>/room/roomEtid.do?r_id='+id)
	}
</script>
