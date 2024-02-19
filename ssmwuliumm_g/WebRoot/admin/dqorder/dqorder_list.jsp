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
           function DqorderDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/dqorder/del.action?id="+id;
               }
           }
           
           function DqorderEdit(id)
           {
							window.location.href="<%=path %>/dqorder/edit.action?id="+id;
           }
           
           
                      function Dqorderpingjia1(id)
           {
							window.location.href="<%=path %>/dqorder/pingjia1.action?id="+id;
           }
           
                    function Dqorderpingjia2(id)
           {
							window.location.href="<%=path %>/dqorder/pingjia2.action?id="+id;
           }
           
           function DqorderAdd()
           {
                 var url="<%=path %>/dqorder/add.action";
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
					<li class="active">代取件信息管理</li>
				</ol>
			</div>
			<!-- 查询-->
			<div class="row search"  style="margin-bottom:30px;">
					<div class="col-md-10">
						<form method="post" class="form-inline" action="<%=path%>/dqorder/list.action" method="post">
						<ul class="list-inline">
						  <li>用户名<input type="text" class="form-control" name="username" value="" placeholder="请输入要查询的名称..."></li>
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
						<td>用户名</td>
						<td>联系电话</td>
						<td>时间</td>
						<td>状态</td>
						<td>送物品人员名称</td>
						<td>送物品人员电话</td>
						<td>客户评价</td>
						<td>快递员评价</td>
						<td>客户评分</td>
						<td>快递员评分</td>
						<td>操作</td>
			        </tr>	
					<c:forEach items="${pagers.datas}" var="Dqorder">
					<tr>
						
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.id}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.orderno}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.content}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.username}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.userphone}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.shijian}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.status}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.yname}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.yphone}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.pingjia}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.pingjia2}
						</td>
							<td bgcolor="#FFFFFF" align="center">
							${Dqorder.pingfen}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${Dqorder.pingfen2}
						</td>
						<td>
							<c:if test="${sessionScope.userType == 0 }">
							<button type="button" class="btn btn-info btn-xs" onclick="DqorderEdit(${Dqorder.id})"><span class="icon-edit text-blue"></span>接单</button>
							<button type="button" class="btn btn-info btn-xs" onclick="DqorderDel(${Dqorder.id})"> <span class="icon-trash-o text-red"></span>删除</button>
							</c:if>
						</td>
					</tr>
					</c:forEach>
				</table>
				<!-- 分页 -->
				<nav>
					<ul class="pagination">
				      <pg:pager  url="${ctx}/dqorder/list.action" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
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