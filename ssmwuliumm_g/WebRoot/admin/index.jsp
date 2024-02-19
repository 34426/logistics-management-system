<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>校园快递物流管理系统设计与开发</title>
<link rel="stylesheet" href="<%=path%>/css/pintuer.css">
<link rel="stylesheet" href="<%=path%>/css/admin.css">
<script src="<%=path%>/js/jquery.js"></script>
<script>
	function logout()
	{
	   if(confirm("确定要退出本系统吗??"))
	   {
		   window.parent.location="<%=path%>/login.jsp";
		}
	}
</script>
</head>
<body style="background-color:#f2f9fd;">
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
				<img src="<%=path%>/images/y.jpg"
					class="radius-circle rotate-hover" height="50" alt="" />校园快递物流管理系统设计与开发
			</h1>
		</div>
		<div class="head-l">
				<a class="button button-little bg-green" href="#"><span class="icon-home"></span> 
						<font style="font-size:16px; font-weight: bold;"> 您好： 
						  <c:if test="${sessionScope.userType==0}">
	                                	${sessionScope.admin.username }
	                      </c:if> <c:if test="${sessionScope.userType==1}">
	                            ${sessionScope.user.realname }
	                      </c:if> 
	                     </font>
				</a> &nbsp;&nbsp;
				<a class="button button-little bg-red" href="#" onclick='javascript:window.parent.location="<%=path %>/login.jsp"'><span class="icon-power-off"></span> 退出登录</a>
		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		<c:if test="${sessionScope.userType==0}">
			<h2>
				<span class="icon-user"></span>管理员管理
			</h2>
			<ul style="display:block">
				<li><a href="<%=path %>/admin/list.action" target="right"><span
						class="icon-caret-right"></span>管理员管理</a>
				</li>
				<li><a href="<%=path %>/admin/add.action" target="right"><span
						class="icon-caret-right"></span>管理员添加</a>
				</li>
			</ul>
			<h2>
				<span class="icon-user"></span>快递用户管理
			</h2>
			<ul>
				<li><a href="<%=path %>/yuangong/list.action" target="right"><span
						class="icon-caret-right"></span>快递用户管理</a>
				</li>
				<li><a href="<%=path %>/yuangong/add.action" target="right"><span
						class="icon-caret-right"></span>快递用户添加</a>
				</li>
			</ul>			
			<h2>
				<span class="icon-pencil-square-o"></span>快递订单信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/order/list.action" target="right"><span
						class="icon-caret-right"></span>快递订单信息管理</a>
				</li>
			</ul>
			<h2>
				<span class="icon-pencil-square-o"></span>用户信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/user/list.action" target="right"><span
						class="icon-caret-right"></span>用户信息管理</a>
				</li>
				<li><a href="<%=path %>/user/add.action" target="right"><span
						class="icon-caret-right"></span>用户信息添加</a>
				</li>
			</ul>			
			<h2>
				<span class="icon-pencil-square-o"></span>代取件信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/dqorder/list.action" target="right"><span
						class="icon-caret-right"></span>代取件信息管理</a>
				</li>
			</ul>
						<h2>
				<span class="icon-pencil-square-o"></span>公告信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/gonggao/list.action" target="right"><span
						class="icon-caret-right"></span>公告信息管理</a>
				</li>
				<li><a href="<%=path %>/gonggao/add.action" target="right"><span
						class="icon-caret-right"></span>公告信息添加</a>
				</li>
			</ul>
		</c:if>
		<c:if test="${sessionScope.userType==1}">
					<h2>
				<span class="icon-pencil-square-o"></span>快递订单信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/order/list.action?yuangongid=${sessionScope.yuangong.id}" target="right"><span
						class="icon-caret-right"></span>快递订单信息管理</a>
				</li>
				<li><a href="<%=path %>/order/add.action" target="right"><span
						class="icon-caret-right"></span>快递订单信息添加</a>
				</li>
			</ul>
									<h2>
				<span class="icon-pencil-square-o"></span>公告信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/gonggao/list.action" target="right"><span
						class="icon-caret-right"></span>公告信息管理</a>
				</li>
			</ul>
		</c:if>
		
				<c:if test="${sessionScope.userType==2}">
					<h2>
				<span class="icon-pencil-square-o"></span>代取件信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/dqorder/list3.action?userid=${sessionScope.user.id}" target="right"><span
						class="icon-caret-right"></span>我的代取件信息管理</a>
				</li>
				<li><a href="<%=path %>/dqorder/list2.action?yid=${sessionScope.user.id}" target="right"><span
						class="icon-caret-right"></span>代取件信息送货管理</a>
				</li>
				<li><a href="<%=path %>/dqorder/add.action" target="right"><span
						class="icon-caret-right"></span>代取件信息添加</a>
				</li>
				<li><a href="<%=path %>/dqorder/list2.action" target="right"><span
						class="icon-caret-right"></span>代取件在线接单</a>
				</li>
			</ul>

					<h2>
				<span class="icon-pencil-square-o"></span>快递订单信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/order/list.action?yuangongid=${sessionScope.yuangong.id}" target="right"><span
						class="icon-caret-right"></span>快递订单信息管理</a>
				</li>
			</ul>
									<h2>
				<span class="icon-pencil-square-o"></span>公告信息管理
			</h2>
			<ul>
				<li><a href="<%=path %>/gonggao/list.action" target="right"><span
						class="icon-caret-right"></span>公告信息管理</a>
				</li>
			</ul>
		</c:if>
	</div>
	<script type="text/javascript">
		$(function() {
			$(".leftnav h2").click(function() {
				$(this).next().slideToggle(200);
				$(this).toggleClass("on");
			})
			$(".leftnav ul li a").click(function() {
				$("#a_leader_txt").text($(this).text());
				$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
			})
		});
	</script>
	<ul class="bread">
		<li><a href="{:U('Index/info')}" target="right" class="icon-home">首页</a>
		</li>
	</ul>
	<div class="admin">
		<iframe scrolling="auto" rameborder="0" src="<%=path %>/admin/readme.jsp" name="right" width="100%" height="100%"></iframe>
	</div>
	<div style="text-align:center;">
		<p>校园快递物流管理系统设计与开发</p>
	</div>
</body>
</html>