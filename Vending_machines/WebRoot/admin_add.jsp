<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
body{ padding: 0px;
	  margin: 0px; 
	  background-color: #B5CDEB;
	}
</style>
<body>

<%@taglib prefix="s" uri="/struts-tags" %>
<script type="text/javascript">
function f(){
	if(document.getElementById("psw").value==document.getElementById("psw2").value){
		document.getElementById("cf").disabled=false;
		
	}
	else{
	document.getElementById("cf").disabled=true;
	}
}
</script>
<s:div align="center" cssStyle="width70%;height:40%; background-color: white;;margin-top:5%;background-color: #B5CDEB;:">
<s:form method="post" action="admin_register.action">
<s:text name="账户注册"></s:text>
<s:textfield name="username" label="用户名" value=""></s:textfield>
<s:textfield name="password2" label="密码" value="" id="psw"></s:textfield>
<s:textfield name="password" label="确认密码" value="" id="psw2" onkeyup="f()" onchange="f()"></s:textfield>
<s:submit value="确认" align="center" disabled="true" id="cf"></s:submit>
</s:form>
</s:div>
</body>
</html>