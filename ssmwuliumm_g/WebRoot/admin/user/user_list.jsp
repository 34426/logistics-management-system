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
           function UserDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/user/del.action?id="+id;
               }
           }
           
           function UserEdit(id)
           {
							window.location.href="<%=path %>/user/edit.action?id="+id;
           }
           
           function UserAdd()
           {
                 var url="<%=path %>/user/add.action";
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
					<li class="active">客户信息管理</li>
				</ol>
			</div>
			<!-- 查询-->
			<div class="row search"  style="margin-bottom:30px;">
					<div class="col-md-10">
						<form method="post" class="form-inline" action="<%=path%>/user/list.action" method="post">
						<ul class="list-inline">
						  <li>名称<input type="text" class="form-control" name="username" value="" placeholder="请输入要查询的名称..."></li>
						  <li>
									<button class="btn btn-default" type="submit">
										<span class="glyphicon glyphicon-search"></span>&nbsp;查询
									</button> 
						  </li>
						</ul>
						</form>
					</div>
					<div class="col-md-2">
						<button type="button" style="float: right;margin-right:30px;" class="btn btn-primary"
							onclick="UserAdd()">添加</button>
					</div>
			</div>	
			<!-- 查询-->	

		<!-- 数据表格-->
		<div>
				<table class="table table-hover  table-bordered table-striped" style="margin-bottom: 0px;">
					<tr>
						<td>ID</td>
						<td>登录名</td>
						<td>密码</td>
						<td>真实姓名</td>
						<td>地址</td>
						<td>性别</td>
						<td>电话</td>
						<td>年龄</td>
						<td>用户状态</td>
						<td>头像</td>
						<td>邮箱</td>
						<td>创建时间</td>
						<td>操作</td>
			        </tr>	
					<c:forEach items="${pagers.datas}" var="User">
					<tr>
						
						<td bgcolor="#FFFFFF" align="center">
							${User.id}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.loginname}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.pwd}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.realname}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.address}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.sex}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.tel}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.age}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.status}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.fujian}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.email}
						</td>
						<td bgcolor="#FFFFFF" align="center">
							${User.shijian}
						</td>
						<td>
							<button type="button" class="btn btn-info btn-xs" onclick="UserEdit(${User.id})"><span class="icon-edit text-blue"></span>修改</button>
							<button type="button" class="btn btn-info btn-xs" onclick="UserDel(${User.id})"> <span class="icon-trash-o text-red"></span>删除</button>
						</td>
					</tr>
					</c:forEach>
				</table>
				<!-- 分页 -->
				<nav>
					<ul class="pagination">
				      <pg:pager  url="${ctx}/user/list.action" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
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