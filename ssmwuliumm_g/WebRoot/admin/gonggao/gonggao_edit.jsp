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
	       					          if(document.formAdd.biaoti.value=="")
			          {
			             alert("请输入标题");return false;
			          }
			          if(document.formAdd.neirong.value=="")
			          {
			             alert("请输入内容");return false;
			          }
			          if(document.formAdd.shijian.value=="")
			          {
			             alert("请输入发布时间");return false;
			          }
			          if(document.formAdd.type.value=="")
			          {
			             alert("请输入公告类型");return false;
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
				<li class="active">公告信息信息修改</li>
			</ol>
		</div>
					<form action="<%=path %>/gonggao/update.action" name="formAdd" method="post">
				  <table class="table table-hover  table-bordered table-striped">
						<tr>
							<th colspan="2">&nbsp;修改公告信息&nbsp;</td>
						</tr>
						    <tr>
							    <th width="50%">
							         标题
							    </th>
							    <td width="50%">
							        	<input type="text" id="biaoti" name="biaoti" value="${requestScope.bean.biaoti}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         内容
							    </th>
							    <td width="50%">
							        	<input type="text" id="neirong" name="neirong" value="${requestScope.bean.neirong}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         发布时间
							    </th>
							    <td width="50%">
							        	<input type="text" id="shijian" name="shijian" value="${requestScope.bean.shijian}" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         公告类型
							    </th>
							    <td width="50%">
							        	<input type="text" id="type" name="type" value="${requestScope.bean.type}" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
							    </td>
								</tr>	
						<tr>
						    <th width="50%">
						        &nbsp;
						    </th>
						    <td width="50%">
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