<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>WMS管理系统</title>
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

	<body>
		<div id="app">
			<div class="sidebar app-aside" id="sidebar">
				<div class="sidebar-container perfect-scrollbar">
					<nav>
						<div class="search-form">
							<a class="s-open" href="javascript:void(0);">
								<i class="ti-search"></i>
							</a>
							<!-- 
							==============================================================
							==============================搜索表单===========================
							==============================================================
							 -->
							<form class="navbar-form" role="search">
								<a class="s-remove" href="javascript:void(0);" target=".navbar-form">
									<i class="ti-close"></i>
								</a>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="搜索...">
									<button class="btn search-button" type="submit">
										<i class="ti-search"></i>
									</button>
								</div>
							</form>
							<!-- 
							==============================================================
							==============================搜索表单===========================
							==============================================================
							 -->
						</div>
						
						<div class="navbar-title">
							<span>物流管理系统</span>
						</div>
						<!-- 
					=======================================================
				=============================以下为功能栏所有功能==========================
					=======================================================
			 -->
						<ul class="main-navigation-menu">
							<li class="active open">
									<div class="item-content">
										<div class="item-media">
											<i class=" ti-sharethis-alt"></i>
										</div>
										<div class="item-inner">
											<span class="title"> 系统首页 </span>
										</div>
									</div>
								</a>
							</li>
							<c:choose>
								<c:when test="${sessionScope.currentUser.u_role == 1}">
									<li>
										<a href="javascript:void(0);">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-home"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 仓库管理</span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="addRole">
													<span class="title"> 仓库列表 </span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="viewRole">
													<span class="title"> 创建仓库 </span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0)">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-user"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 人员管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="Receiving">
													<span class="title">角色列表</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="putAway">
													<span class="title">新增角色</span>
												</a>
											</li>
											
										</ul>
									</li>
									<li>
										<a href="javascript:void(0)">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-bar-chart-alt"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 报表管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="PickingList">
													<span class="title">入库表管理</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="Picking">
													<span class="title">收入支出表管理</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-pencil-alt"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 运费管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="Cycle">
													<span class="title">运费列表</span>
												</a>
											</li>								
											<li>
												<a href="javascript:void(0);" id="Transfer">
													<span class="title">定价审核</span>
												</a>
											</li>
										</ul>
									</li>
								</c:when>
								<c:when test="${sessionScope.currentUser.u_role == 2}">
										<!--============================
								================以上为超级管理员角色列表================
								================================-->
									<li>
										<a href="javascript:void(0);">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-home"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 仓库管理</span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="addRole">
													<span class="title"> 在库库存 </span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="viewRole">
													<span class="title"> 入库通知 </span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="viewRole">
													<span class="title"> 出库管理</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="viewRole">
													<span class="title"> 移货通知</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="viewRole">
													<span class="title"> 货物破损列表</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0)">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-user"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 人员管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="Receiving">
													<span class="title">角色列表</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="putAway">
													<span class="title">新增角色</span>
												</a>
											</li>
											
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-truck"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 车辆管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
										<li>
												<a href="javascript:void(0);" id="FeeType">
													<span class="title"> 车辆列表 </span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="FeeRule">
													<span class="title"> 新增车辆 </span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0)">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-bar-chart-alt"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 报表管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="PickingList">
													<span class="title">入库表管理</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="Picking">
													<span class="title">收入支出表管理</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-pencil-alt"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 运费管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="Cycle">
													<span class="title">运费列表</span>
												</a>
											</li>								
											<li>
												<a href="javascript:void(0);" id="Transfer">
													<span class="title">新增定价</span>
												</a>
											</li>
										</ul>
									</li>
							<!-- ===========================
								==============以上为仓库管理员模块==============
								============================
							 -->
							 </c:when>
							 <c:when test="${sessionScope.currentUser.u_role == 3}">
									<li>
										<a href="javascript:void(0);">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-dropbox"></i>
												</div>
												<div class="item-inner">
													<span class="title">货物管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="ReceiptList">
													<span class="title">货物列表</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="DispatchList">
													<span class="title">退货列表</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0)">
											<div class="item-content">
												<div class="item-media">
													<i class="ti-bar-chart-alt"></i>
												</div>
												<div class="item-inner">
													<span class="title"> 报表管理 </span><i class="icon-arrow"></i>
												</div>
											</div>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="javascript:void(0);" id="PickingList">
													<span class="title">每日业绩</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="Picking">
													<span class="title">每月业绩</span>
												</a>
											</li>
										</ul>
									</li>
								</c:when>
							</c:choose>
							<li>
								<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-settings"></i>
										</div>
										<div class="item-inner">
											<span class="title"> 系统管理 </span><i class="icon-arrow"></i>
										</div>
									</div>
								</a>
								<ul class="sub-menu">
									<li>
										<a href="javascript:void(0);" id="PickingList">
											<span class="title">个人中心</span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0);" id="Picking">
											<span class="title">消息中心</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
						<div class="wrapper">
							<a href="javascript:void(0);" class="button-o"
							onclick="window.location.href='<%=path%>/user/logout.do'" id="OperatingManual">
								<span>安全退出</span>
							</a>
						</div>
					</nav>
				</div>
			</div>
			<!-- 
					=======================================================
				=============================以上为所有功能列表==========================
					=======================================================
			 -->
			<div class="app-content">
				<header class="navbar navbar-default navbar-static-top">
					<div class="navbar-header">
						<a href="#" class="sidebar-mobile-toggler pull-left hidden-md hidden-lg" class="btn btn-navbar sidebar-toggle" data-toggle-class="app-slide-off" data-toggle-target="#app" data-toggle-click-outside="#sidebar">
							<i class="ti-align-justify"></i>
						</a>
						<a class="navbar-brand" href="#">
							<img src="assets/images/logo.png" alt="logo"/>
						</a>
						<a href="#" class="sidebar-toggler pull-right visible-md visible-lg" data-toggle-class="app-sidebar-closed" data-toggle-target="#app">
							<i class="ti-align-justify"></i>
						</a>
						<a class="pull-right menu-toggler visible-xs-block" id="menu-toggler" data-toggle="collapse" href=".navbar-collapse">
							<i class="ti-view-grid"></i>
						</a>
					</div>
					
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-right">
							<li class="dropdown">
								<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
									<span class="dot-badge partition-red"></span> <i class="ti-comment"></i> <span>公告</span>
								</a>
								<ul class="dropdown-menu dropdown-light dropdown-messages dropdown-large">
									<li>
										<span class="dropdown-header"> 新公告</span>
									</li>
									<li>
										<div class="drop-down-wrapper ps-container">
											<ul>
												<li class="unread">
													<a href="javascript:;" class="unread">
														<div class="clearfix">
															<div class="thread-image">
																<img src="./assets/images/avatar-2.jpg" alt="">
															</div>
															<div class="thread-content">
																<span class="author">高铭波</span>
																<span class="preview">明天上体育课！</span>
																<span class="time"> 2016.12.11 20:27</span>
															</div>
														</div>
													</a>
												</li>
												<!-- 
													========================================
													===================公告内信息==============
													========================================
												 -->
												<li>
													<a href="javascript:;" class="unread">
														<div class="clearfix">
															<div class="thread-image">
																<img src="./assets/images/avatar-3.jpg" alt="">
															</div>
															<div class="thread-content">
																<span class="author">潘永晖</span>
																<span class="preview">明天启动项目！</span>
																<span class="time">2016.12.11 20:30</span>
															</div>
														</div>
													</a>
												</li>
												<!-- 
													========================================
													========================================
													========================================
												 -->
											</ul>
										</div>
									</li>
									<li class="view-all">
										<a href="#">
											查看全部
										</a>
									</li>
								</ul>
							</li>
							
							<li class="dropdown">
								<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
									<i class="ti-check-box"></i> <span>操作</span>
								</a>
								<ul class="dropdown-menu dropdown-light dropdown-messages dropdown-large">
									<li>
										<span class="dropdown-header"> 你有新的通知</span>
									</li>
									<li>
										<div class="drop-down-wrapper ps-container">
											<div class="list-group no-margin">
												<a class="media list-group-item" href="">
													<img class="img-circle" alt="..." src="assets/images/avatar-1.jpg">
													<span class="media-body block no-margin"> 高铭波请求权限！<small class="block text-grey">2016.12.11 20:40</small> </span>
												</a>
												<a class="media list-group-item" href="">
													<span class="media-body block no-margin"> 请求内容 <small class="block text-grey">2016.12.11 20:40</small> </span>
												</a>
											</div>
										</div>
									</li>
									<li class="view-all">
										<a href="#">
											查看全部
										</a>
									</li>
								</ul>
							</li>
							<!-- 
								=====================================================
								==========================以下为管理员信息===========================
								=====================================================
							 -->
							<li class="dropdown current-user">
								<a href class="dropdown-toggle" data-toggle="dropdown">
									<img src="assets/images/avatar-1.jpg" alt="Peter"> <span class="username">${currentUser.u_name} <i class="ti-angle-down"></i></i></span>
								</a>
								<ul class="dropdown-menu dropdown-dark">
									<li>
										<a href="javascript:void(0);">
											个人中心
										</a>
									</li>

									<li>
										<a hef="javascript:void(0);">
											消息中心
										</a>
									</li>
									<li>
										<a href="javascript:void(0);" onclick="window.location.href='<%=path%>/user/logout.do'">
											安全退出
										</a>
									</li>
								</ul>
							</li>
							
						</ul>
						
						<div class="close-handle visible-xs-block menu-toggler" data-toggle="collapse" href="">
							<div class="arrow-left"></div>
							<div class="arrow-right"></div>
						</div>
					</div>
				</header>
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<section id="page-title" class="padding-top-15 padding-bottom-15">
							<div class="row" id="mainPanel">
								<div class="col-sm-7">
									<h1 class="mainTitle"> 系统首页</h1>
								</div>
								<div class="col-sm-5">
									
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
			<!-- 
					=======================================================
				=============================底部版权说明==========================
					=======================================================
			 -->
			<footer>
				<div class="footer-inner">
					<div class="pull-left">
						&copy; <span class="current-year"></span><span class="text-bold text-uppercase">HT物流项目组版权所有</span>. <span>翻版必究</span>
					</div>
				</div>
			</footer>
			
			<!-- 
					=======================================================
				=============================以下为右侧设置栏==========================
					=======================================================
			 -->
			<div class="settings panel panel-default hidden-xs hidden-sm" id="settings">
				<button ct-toggle="toggle" data-toggle-class="active" data-toggle-target="#settings" class="btn btn-default">
					<i class="fa fa-spin fa-gear"></i>
				</button>
				<div class="panel-heading">
					桌面设置
				</div>
				<div class="panel-body">
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">固定侧边栏</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-sidebar" />
						</span>
					</div>
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">关闭侧边栏</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="closed-sidebar" />
						</span>
					</div>
					
					<!-- ====================================
					=======================以下为换颜色板块=====================
					============================================ -->
					
					<div class="colors-row setting-box">
						<div class="color-theme theme-1">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-1">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
						<div class="color-theme theme-2">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-2">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
					</div>
					<div class="colors-row setting-box">
						<div class="color-theme theme-3">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-3">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
						<div class="color-theme theme-4">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-4">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
					</div>
					<div class="colors-row setting-box">
						<div class="color-theme theme-5">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-5">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
						<div class="color-theme theme-6">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-6">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
					</div>
					
					<!-- ====================================
					=======================以上为换颜色板块=====================
					============================================ -->
				</div>
			</div>
		</div>
		
		<script src="assets/js/jquery-3.1.1.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<script src="vendor/Chart.js/Chart.min.js"></script>
		<script src="vendor/jquery.sparkline/jquery.sparkline.min.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/index.js"></script>

		<script>
			jQuery(document).ready(function() {
				Main.init();
				Index.init();
				$("#addRole").click(function(){
					$('#mainPanel').load('pages/addRole.html');
				})
				$("#viewRole").click(function(){
					$('#mainPanel').load('pages/viewRole.html');
				})
				$("#Receiving").click(function(){
					$('#mainPanel').load('pages/Receiving.html');
				})
				$("#putAway").click(function(){
					$('#mainPanel').load('pages/putAway.html');
				})
				$("#PickingList").click(function(){
					$('#mainPanel').load('pages/PickingList.html');
				})
				$("#Picking").click(function(){
					$('#mainPanel').load('pages/Picking.html');
				})
				$("#Cycle").click(function(){
					$('#mainPanel').load('pages/Cycle.html');
				})
				$("#Transfer").click(function(){
					$('#mainPanel').load('pages/Transfer.html');
				})
				$("#QC").click(function(){
					$('#mainPanel').load('pages/QC.html');
				})
				$("#FeeType").click(function(){
					$('#mainPanel').load('pages/FeeType.html');
				})
				$("#FeeRule").click(function(){
					$('#mainPanel').load('pages/FeeRule.html');
				})
				$("#FeeSettlement").click(function(){
					$('#mainPanel').load('pages/FeeSettlement.html');
				})
				$("#ReceiptList").click(function(){
					$('#mainPanel').load('pages/ReceiptList.html');
				})
				$("#DispatchList").click(function(){
					$('#mainPanel').load('pages/DispatchList.html');
				})
				$("#MoveList").click(function(){
					$('#mainPanel').load('pages/MoveList.html');
				})
				$("#InventoryList").click(function(){
					$('#mainPanel').load('pages/InventoryList.html');
				})
				$("#CheckList").click(function(){
					$('#mainPanel').load('pages/CheckList.html');
				})
				$("#InPlanReport").click(function(){
					$('#mainPanel').load('pages/InPlanReport.html');
				})
				$("#InReport").click(function(){
					$('#mainPanel').load('pages/InReport.html');
				})
				$("#InPlanVarianceReport").click(function(){
					$('#mainPanel').load('pages/InPlanVarianceReport.html');
				})
				$("#OutReport").click(function(){
					$('#mainPanel').load('pages/OutReport.html');
				})
				$("#DDR").click(function(){
					$('#mainPanel').load('pages/DDR.html');
				})
				$("#CheckVarianceReport").click(function(){
					$('#mainPanel').load('pages/CheckVarianceReport.html');
				})
				$("#StatusReporting").click(function(){
					$('#mainPanel').load('pages/StatusReporting.html');
				})
			});
		</script>
	</body>
</html>
