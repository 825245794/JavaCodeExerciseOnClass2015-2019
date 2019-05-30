<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--
*{
padding:0;
margin:0;
  
}
  #content{
	width: 600px;
	height: 600px;
	background-color:#FFE8E8;
	border-bottom-style:solid;
	border-width:1px;
	border-color:#BFBFBF
  }
.STYLE1 {color: #FF0000}

-->
</style>
</head>
 
 
<body bgcolor="#FDF3EE">
    <div align="center">
	<s:fielderror></s:fielderror>	    
  <table width="1000" height="400" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
   
     <tr>
        <td valign="top"><h1 align="center">&nbsp;</h1>
        <h1 align="center">&nbsp;</h1>
        <h1 align="center">管理员登录</h1>
        <p align="center">&nbsp;</p>
        <form id="form1" name="form1" method="post" action="admin/login">
          <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="40"><div align="right">用户名：</div></td>
              <td height="40"><label>
                <input name="adminid" type="text"  />
              </label></td>
              <td height="40"><div align="center"><span class="STYLE1">*</span></div></td>
            </tr>
            <tr>
              <td height="40"><div align="right">密码：</div></td>
              <td height="40"><label>
                <input name="apass" type="password" />
              </label></td>
              <td height="40"><div align="center"><span class="STYLE1">*</span></div></td>
            </tr>
            <tr>
              <td height="40" colspan="3"><div align="center">
                <input type="submit" name="Submit" value="登 录" />
            &nbsp; 
            <label>
            <input type="reset" name="Submit2" value="重  置" />
            </label>
            &nbsp;&nbsp; </div></td>
            </tr>
          </table>
          <label></label>
        </form>        <p align="center">&nbsp;</p></td>
     </tr>
   </table>
 
  
  </div>
  </body>
  </html>
