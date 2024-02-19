<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap-theme.min.css"/>
		<script src="<%=path%>/bootstrap3/resource/js/jquery-1.11.2.min.js"></script>
		<script src="<%=path%>/bootstrap3/resource/js/bootstrap.min.js"></script>
				<!-- 日期控件 -->
		<script src="<%=path%>/resource/My97DatePicker/WdatePicker.js"></script>
		<script language="javascript">
           function OrderDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/order/del.action?id="+id;
               }
           }
           
           function OrderEdit(id)
           {
							window.location.href="<%=path %>/order/edit.action?id="+id;
           }
           
           function OrderAdd()
           {
                 var url="<%=path %>/order/add.action";
				 				 window.location.href=url;
           }
       </script>
	</head>

	<body>
		<div class="col-lg-12">
			<div>
				<ol class="breadcrumb">
					<li><span class="glyphicon glyphicon-home"></span>&nbsp;<a
						href="#">主页</a></li>
					<li class="active">快递订单信息管理</li>
				</ol>
			</div>
			<!-- 查询-->
			<div class="row search"  style="margin-bottom:30px;">
					<div class="col-md-10">
						<form method="post" class="form-inline" action="<%=path%>/order/list.action" method="post">
						<ul class="list-inline">
						  <li>名称<input type="text" class="form-control" name="username" placeholder="请输入要查询的名称..."></li>
						  <li>
									<button class="btn btn-default" type="submit">
										<span class="glyphicon glyphicon-search"></span>&nbsp;查询
									</button> 
						  </li>
						</ul>
						</form>
					</div>
					<div class="col-md-2">
					</div>
			</div>	
			<!-- 查询-->	

		<!-- 数据表格-->
		<div>
				<table class="table table-hover  table-bordered table-striped" style="margin-bottom: 0px;">
					<tr>
						<td>ID</td>
						<td>快递编号</td>
						<td>快递描述</td>
						<td>客户名</td>
						<td>客户联系电话</td>
						<td>时间</td>
						<td>状态</td>
						<td>操作</td>
			        </tr>	
					<c:forEach items="${pagers.datas}" var="Order">
					<tr>
						
						<td bgcolor="#FFFFFF" align="center">
							${Order.id}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Order.orderno}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Order.content}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Order.username}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Order.userphone}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Order.shijian}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							<c:if test="${Order.status  == 0}">未取货</c:if>
							<c:if test="${Order.status  == 1}">已取货</c:if>
						</td>
						<td>
							<c:if test="${sessionScope.userType != 2 }">
							<button type="button" class="btn btn-info btn-xs" onclick="OrderEdit(${Order.id})"><span class="icon-edit text-blue"></span>修改</button>
							<button type="button" class="btn btn-info btn-xs" onclick="OrderDel(${Order.id})"> <span class="icon-trash-o text-red"></span>删除</button>
							</c:if>
						</td>
					</tr>
					</c:forEach>
				</table>
				<!-- 分页 -->
				<nav>
					<ul class="pagination">
				      <pg:pager  url="${ctx}/order/list.action" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
						<pg:param name="name" value="${name}"/>
						<pg:last>  
							<font color="black">共${pagers.total}记录,共${pageNumber}页, </font> 
						</pg:last>  
							<font color="black">当前第${curPage}页 </font> 
				        <pg:first>  
				            <li><a href="${pageUrl}">首页</a></li>
						</pg:first>  
						<pg:prev>  
				    		<li><a href="${pageUrl}">上一页</a></li>
						</pg:prev>  
				       	<pg:pages>  
				        	<c:choose>  
				            	<c:when test="${curPage eq pageNumber}">  
				                	<li><a href="#"><font color="red">${pageNumber }</font> </a></li> 
				            	</c:when>  
				            	<c:otherwise>  
				               		<li><a href="${pageUrl}">${pageNumber}</a></li> 
				            	</c:otherwise>  
				        	</c:choose>  
				    	</pg:pages>
				             
				        <pg:next>  
				    		<li><a href="${pageUrl}">下一页</a></li>
						</pg:next>  
						<pg:last>  
							<c:choose>  
				            	<c:when test="${curPage eq pageNumber}">  
				                	<li><a href="#"><font color="red">尾页</font></a></li>
				            	</c:when>  
				            	<c:otherwise>  
				               		<li><a href="${pageUrl}">尾页</a></li>
				            	</c:otherwise>  
				        	</c:choose> 
						</pg:last>
					</pg:pager>							
					</ul>
				</nav>
				<!-- 分页 -->					
		</div>
	</div>		
	</body>
</html>