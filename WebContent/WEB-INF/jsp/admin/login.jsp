<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>">
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="css/admin/style.css"
	   type=text/css rel=stylesheet>
<link href="css/admin/boot-crm.css"
	   type=text/css rel=stylesheet>
<script src=
       "js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script type="text/javascript">
// 判断是登录账号和密码是否为空
function check(){
    var aname = $("#aname").val();
    var apwd = $("#apwd").val();
    if(aname=="" || apwd==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="images/admin/bb.jpg">
<div ALIGN="center">
<table border="0px" width="440px" cellspacing="0" cellpadding="0px"
                                                           id="table1">
	<tr>
		<td height="93"></td>
		<td></td>
	</tr>
	<tr>
   <td class="login_msg" width="400" align="center">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <fieldset style="width: 0px auto; margin: 0px auto;">
		  <legend>
		     <font style="font-size:15px" face="宋体">
		          欢迎使用BOOT学生信息管理系统
		     </font>
		  </legend> 
		<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
		<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
		<form action="admin/login" 
			                       method="post" onsubmit="return check()">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
          账&nbsp;号：<input id="aname" type="text" name="aname" />
          <br /><br />
          密&nbsp;码：<input id="apwd" type="password" name="apwd" />
          <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <input type="submit" value="登录" />
		 </form>
	 </fieldset>
	</td>
	</tr>
</table>
</div>
</body>
</html>
