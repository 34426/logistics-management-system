﻿<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap-theme.min.css"/>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap-datetimepicker.css" />
		<script src="<%=path%>/bootstrap3/resource/js/jquery-1.11.2.min.js"></script>
		<script src="<%=path%>/bootstrap3/resource/js/bootstrap.min.js"></script>
				<!-- 日期控件 -->
		<script src="<%=path%>/resource/My97DatePicker/WdatePicker.js"></script>
		<script language="javascript">
	       function check()
	       {
	       					          if(document.formAdd.orderno.value=="")
			          {
			             alert("请输入快递编号");return false;
			          }
			          if(document.formAdd.content.value=="")
			          {
			             alert("请输入快递描述");return false;
			          }
			          if(document.formAdd.username.value=="")
			          {
			             alert("请输入用户名");return false;
			          }
			          if(document.formAdd.userphone.value=="")
			          {
			             alert("请输入联系电话");return false;
			          }
			          if(document.formAdd.shijian.value=="")
			          {
			             alert("请输入时间");return false;
			          }
			          if(document.formAdd.status.value=="")
			          {
			             alert("请输入状态");return false;
			          }
			          if(document.formAdd.yname.value=="")
			          {
			             alert("请输入送物品人员名称");return false;
			          }
			          if(document.formAdd.yphone.value=="")
			          {
			             alert("请输入送物品人员电话");return false;
			          }
			          if(document.formAdd.yid.value=="")
			          {
			             alert("请输入雇员ID");return false;
			          }
			          if(document.formAdd.pingjia.value=="")
			          {
			             alert("请输入客户评价");return false;
			          }
			          if(document.formAdd.pingjia2.value=="")
			          {
			             alert("请输入快递员评价");return false;
			          }
						 
	          return true;
	       }   
	    </script>  
	</head>

	<body>
			<div class="col-lg-12">
		<div>
			<ol class="breadcrumb">
				<li><span class="glyphicon glyphicon-home"></span>&nbsp;<a
					href="#">主页</a></li>
				<li class="active">代取件信息修改</li>
			</ol>
		</div>
					<form action="<%=path %>/dqorder/update1.action" name="formAdd" method="post">
				  <table class="table table-hover  table-bordered table-striped">
						<tr>
							<th colspan="2">&nbsp;修改代取件&nbsp;</td>
						</tr>
						    <tr>
							    <th width="50%">
							         快递编号
							    </th>
							    <td width="50%">
							        	<input type="text" id="orderno" name="orderno" readonly="readonly" value="${requestScope.bean.orderno}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         快递描述
							    </th>
							    <td width="50%">
							        	<input type="text" id="content" name="content" readonly="readonly" value="${requestScope.bean.content}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         用户名
							    </th>
							    <td width="50%">
							        	<input type="text" id="username" name="username" readonly="readonly" value="${requestScope.bean.username}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         联系电话
							    </th>
							    <td width="50%">
							        	<input type="text" id="userphone" name="userphone" readonly="readonly" value="${requestScope.bean.userphone}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         时间
							    </th>
							    <td width="50%">
							        	<input type="text" id="shijian" name="shijian" readonly="readonly" value="${requestScope.bean.shijian}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         送物品人员名称
							    </th>
							    <td width="50%">
							        	<input type="text" id="yname" name="yname" value="${sessionScope.user.realname}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         送物品人员电话
							    </th>
							    <td width="50%">
							        	<input type="text" id="yphone" name="yphone"  value="${sessionScope.user.tel}" />
							    </td>
								</tr>	
						<tr>
						    <th width="50%">
						        &nbsp;
						    </th>
						    <td width="50%">
						    	<input type="hidden" id="yid" name="yid" value="${sessionScope.user.id}"/>
						    	<input type="hidden" id="status" name="status" value="1"/>
						    	<input type="hidden" id="userid" name="userid" value="${requestScope.bean.userid }"/>
						       <input type="submit" value="提交" onclick="return check()"/>&nbsp; 
						       		<input type="hidden" name="id" value="${requestScope.bean.id}"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
				</table>
			</form>
		</div>	
   </body>
</html>