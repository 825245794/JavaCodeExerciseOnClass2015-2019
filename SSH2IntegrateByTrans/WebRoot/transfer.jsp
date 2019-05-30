<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
 <html> 
	<head>
		<title>转账页面</title>
	</head>
	<body>
	   <s:form action="doTransfer.action">
	     <table align="center">
	       <tr>	       
	        <s:textfield name="ac1" label="账户1"  /> 
	       </tr>
	       <tr>
	         <s:textfield name="ac2" label="账户2"  /> 
	       </tr>
	       <tr>
	         <s:textfield name="amount" label="转账金额"  /> 
	       </tr>
	       <tr>
	         <s:submit value="转账"  /> 
	       </tr>	     
	     </table>
	   </s:form>
		
	</body>
</html>
