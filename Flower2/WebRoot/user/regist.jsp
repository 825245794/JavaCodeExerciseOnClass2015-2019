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
    
    <title>My JSP 'regist.jsp' starting page</title>
    
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
 
  <s:include value="top.jsp"></s:include>
<body bgcolor="#FDF3EE">
    <div align="center">
<s:fielderror></s:fielderror>	    
  <table width="1000" height="600" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
   
     <tr>
        <td valign="top"><h1 align="center">&nbsp;</h1>
        <h1 align="center">&nbsp;</h1>
        <h1 align="center">用户注册</h1>
        <p align="center">&nbsp;</p>
        <form id="form1" name="form1" method="post" action="user/regist">
          <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="30"><div align="right">用户名：</div></td>
              <td height="30"><label>
                <input name="user.userid" type="text" id="user.userid" />
              </label></td>
              <td><div align="center"><span class="STYLE1">*</span></div></td>
            </tr>
            <tr>
              <td height="30"><div align="right">密码：</div></td>
              <td height="30"><label>
                <input name="user.upass" type="password" id="user.upass" />
              </label></td>
              <td><div align="center"><span class="STYLE1">*</span></div></td>
            </tr>
            <tr>
              <td height="30"><div align="right">确认密码：</div></td>
              <td height="30"><label>
                <input name="repass" type="password" id="repass" />
              </label></td>
              <td><div align="center"><span class="STYLE1">*</span></div></td>
            </tr>
            <tr>
              <td height="30"><div align="right">昵称</div></td>
              <td height="30"><label>
                <input name="user.nikename" type="text" id="user.nikename" />
              </label></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="30" colspan="3"><div align="center">
                <input type="submit" name="Submit" value="注  册" />
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
