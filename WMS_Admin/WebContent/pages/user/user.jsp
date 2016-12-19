<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<section id="page-title" class="padding-top-15 padding-bottom-15">
  <div class="row">
    <div class="col-sm-7">
      <h1 class="mainTitle">所有仓管</h1>

    </div>
    <div class="col-sm-5">

    </div>
  </div>
</section>
<div class="row">
	<div class="col-md-12">
		<table class="table table-striped table-hover" id="sample-table-2">
			<thead>
				<tr>
					<th class="hidden-xs">用户名</th>
					<th class="hidden-xs">性别</th>
					<th class="hidden-xs">年龄</th>
					<th class="hidden-xs">电话号码</th>
					<th class="hidden-xs">角色</th>
					<th class="hidden-xs">身份证号码</th>
					<th class="hidden-xs">邮箱</th>
					<th class="hidden-xs">管理仓库</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${user}" var="c">
					<tr>
						<td class="hidden-xs">${c.u_name }</td>
						<td class="hidden-xs">${c.u_sex }</td>
						<td class="hidden-xs">${c.u_age }</td>
						<td class="hidden-xs">${c.u_phone }</td>
						<c:if test="${c.u_role=='2' }" >
							<td class="hidden-xs">仓库管理员</td>
						</c:if>
						<td class="hidden-xs">${c.u_cardid }</td>
						<td class="hidden-xs">${c.u_email }</td>
						<td class="hidden-xs">${c.r_name }</td>
						<td class="center">
						<div class="visible-md visible-lg hidden-sm hidden-xs">
							<a href="#" class="btn btn-transparent btn-xs" tooltip-placement="top" tooltip="Edit"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-transparent btn-xs tooltips" tooltip-placement="top" tooltip="Share"><i class="fa fa-share"></i></a>
							<a href="#" class="btn btn-transparent btn-xs tooltips" tooltip-placement="top" tooltip="Remove"><i class="fa fa-times fa fa-white"></i></a>
						</div>
						<div class="visible-xs visible-sm hidden-md hidden-lg">
							<div class="btn-group" dropdown>
								<button type="button" class="btn btn-primary btn-sm dropdown-toggle" dropdown-toggle>
									<i class="fa fa-cog"></i>&nbsp;<span class="caret"></span>
								</button>
							</div>
						</div></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
