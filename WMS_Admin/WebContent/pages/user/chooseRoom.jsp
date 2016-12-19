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
							<a href="javascript:;" onClick="determine('${c.r_id}',${c.r_name})" class="btn btn-o btn-danger">
								确定选择
							</a>
						</p>
					</div>
				</div>
			</div>
		
	</c:forEach>
</div>
<script type="text/javascript">
	function determine(id,name){
		$('#container').load('<%=path%>/user/determineRoom.do?id='+id+'&name='+name)
	}
</script>
