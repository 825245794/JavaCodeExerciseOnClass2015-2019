<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
</head>
<style>
body{ padding: 0px;
	  margin: 0px; 
	  background-color: #B5CDEB;
	}
	#a{text-decoration:none;
} 
	
</style>
<body>
<s:div>
<table border="0" style=" width:100%; "" cellpadding="0" cellspacing="0" align="center"; bgcolor="#D4EAEE"; id="b">
<tbody><tr>
<!--<td align="left" height="10" width="20"></td>-->
<td align="left" height="10" width="30"><a href="" id="a"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="6" color="black" >账户登陆</font></a></td>
<td align="left" height="10" width="190"style="color:blue;background-color: #D4EAEE; "onClick="javascript :history.back(-1);"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="4">返回</font></td>
<td align="left" height="10" width="30"><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>
<td align="left" height="10" width="30"><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>
</tr>
</tbody></table>
</s:div>
<s:div align="center" cssStyle="width:25%;height:40%; background-color: white;margin-left:35%;margin-top:5%;">
<s:form method="post" action="login_check.action">
<s:text name="账户登录"></s:text>
<s:textfield name="username" label="用户名" value="admin"></s:textfield>
<s:password name="password" label="密码" value="root"></s:password>
<s:submit value="登录" align="center"></s:submit>
</s:form>
</s:div>
</body>
</html>