<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>    
    <title>登录表单</title>
  </head>
  
  <body>
    <s:form action="doLogin.action" method="get">
   <table>
     <tr>	       
      <s:textfield name="loginName" label="用户名"  /> 
     </tr>
     <tr>
       <s:textfield name="loginPwd" label="密码"  /> 
     </tr>
     <tr>
       <s:submit value="确认"  /> 
     </tr>	     
   </table>
</s:form>
    
  </body>
</html>
