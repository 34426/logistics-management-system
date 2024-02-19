<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap-theme.min.css"/>
		<link rel="stylesheet" href="<%=path%>/resource/bootstrap3/css/bootstrap-datetimepicker.css" />
		<script src="<%=path%>/resource/bootstrap3/js/jquery-1.11.2.min.js"></script>
		<script src="<%=path%>/resource/bootstrap3/js/bootstrap.min.js"></script>
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
		             alert("请输入客户名");return false;
		          }
		          if(document.formAdd.userphone.value=="")
		          {
		             alert("请输入客户联系电话");return false;
		          }
		          if(document.formAdd.shijian.value=="")
		          {
		             alert("请输入时间");return false;
		          }
		          if(document.formAdd.status.value=="")
		          {
		             alert("请输入状态");return false;
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
				<li class="active">快递订单信息添加</li>
			</ol>
		</div>
			<form action="<%=path %>/order/save.action" name="formAdd" method="post">
				  <table class="table table-hover  table-bordered table-striped">
						<tr>
							<th colspan="4">&nbsp;添加快递订单&nbsp;</td>
						</tr>
						    <tr>
							    <th width="50%">
							         快递编号
							    </th>
							    <td width="50%">
							        	<input type="text" id="orderno" name="orderno" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         快递描述
							    </th>
							    <td width="50%">
							        	<input type="text" id="content" name="content" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         客户名
							    </th>
							    <td width="50%">
							        	<input type="text" id="username" name="username" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         客户联系电话
							    </th>
							    <td width="50%">
							        	<input type="text" id="userphone" name="userphone" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         时间
							    </th>
							    <td width="50%">
							        	<input name="shijian" id="shijian" readonly="readonly" class="input"  type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})"/>
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         状态
							    </th>
							    <td width="50%">
							    	<select id="status" name="status">
							    		<option value="0">未取货</option>
							    		<option value="1">已取货</option>
							    	</select>
							    </td>
								</tr>	
						<tr>
						    <th width="50%">
						        &nbsp;
						    </th>
						    <td width="50%">
						    	<input type="hidden" id="yuangongid" name="yuangongid" value="${sessionScope.yuangong.id}"/>
						       <input type="submit" value="提交" onclick="return check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
				</table>
			</form>
		</div>
   </body>
</html>
