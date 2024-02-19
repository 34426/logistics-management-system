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
       				          if(document.formAdd.loginname.value=="")
		          {
		             alert("请输入登录名");return false;
		          }
		          if(document.formAdd.pwd.value=="")
		          {
		             alert("请输入密码");return false;
		          }
		          if(document.formAdd.realname.value=="")
		          {
		             alert("请输入真实姓名");return false;
		          }
		          if(document.formAdd.address.value=="")
		          {
		             alert("请输入地址");return false;
		          }
		          if(document.formAdd.sex.value=="")
		          {
		             alert("请输入性别");return false;
		          }
		          if(document.formAdd.tel.value=="")
		          {
		             alert("请输入电话");return false;
		          }
		          if(document.formAdd.age.value=="")
		          {
		             alert("请输入年龄");return false;
		          }
		          if(document.formAdd.status.value=="")
		          {
		             alert("请输入用户状态");return false;
		          }
		          if(document.formAdd.fujian.value=="")
		          {
		             alert("请输入头像");return false;
		          }
		          if(document.formAdd.email.value=="")
		          {
		             alert("请输入邮箱");return false;
		          }
		          if(document.formAdd.shijian.value=="")
		          {
		             alert("请输入创建时间");return false;
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
				<li class="active">客户信息添加</li>
			</ol>
		</div>
			<form action="<%=path %>/user/save.action" name="formAdd" method="post">
				  <table class="table table-hover  table-bordered table-striped">
						<tr>
							<th colspan="4">&nbsp;添加客户&nbsp;</td>
						</tr>
						    <tr>
							    <th width="50%">
							         登录名
							    </th>
							    <td width="50%">
							        	<input type="text" id="loginname" name="loginname" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         密码
							    </th>
							    <td width="50%">
							        	<input type="text" id="pwd" name="pwd" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         真实姓名
							    </th>
							    <td width="50%">
							        	<input type="text" id="realname" name="realname" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         地址
							    </th>
							    <td width="50%">
							        	<input type="text" id="address" name="address" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         性别
							    </th>
							    <td width="50%">
							        	<input type="text" id="sex" name="sex" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         电话
							    </th>
							    <td width="50%">
							        	<input type="text" id="tel" name="tel" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         年龄
							    </th>
							    <td width="50%">
							        	<input type="text" id="age" name="age" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         邮箱
							    </th>
							    <td width="50%">
							        	<input type="text" id="email" name="email" />
							    </td>
								</tr>	
						    <tr>
							    <th width="50%">
							         创建时间
							    </th>
							    <td width="50%">
							        	<input type="text" id="shijian" name="shijian" />
							    </td>
								</tr>	
						<tr>
						    <th width="50%">
						        &nbsp;
						    </th>
						    <td width="50%">
						    	<input type="hidden" id="status" name="status" value="正常"/>
						       <input type="submit" value="提交" onclick="return check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
				</table>
			</form>
		</div>
   </body>
</html>
