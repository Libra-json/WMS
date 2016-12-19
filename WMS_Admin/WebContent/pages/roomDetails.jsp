<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<section id="page-title" class="padding-top-15 padding-bottom-15">
  <div class="row">
    <div class="col-sm-7">
      <h1 class="mainTitle">详情信息</h1>

    </div>
    <div class="col-sm-5">

    </div>
  </div>
</section>
<div class="row">
	<div class="col-sm-6 col-md-3">
		<div class="thumbnail">
			<div class="caption" style="word-break:break-word;">
				<p>
					仓库编号：${r.r_id}
					<br />
					仓库名称：${r.r_name}
					<br />
					仓库联系人：${r.r_lxr}
					<br />
					联系人电话：${r.r_phone}
					<br />
					联系人邮箱：${r.r_email}
					<br />
					仓库地址：${r.r_area}
				</p>				
			</div>
		</div>
	</div>
</div>
