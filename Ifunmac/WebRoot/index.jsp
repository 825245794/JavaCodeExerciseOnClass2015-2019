<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
 <!-- http://www.ifunmac.com/wp-login.php?log=825245794%40qq.com&pwd=A21210000&wp-submit=%E7%99%BB%E5%BD%95&redirect_to=http%3A%2F%2Fwww.ifunmac.com&testcookie=1 -->
  <body>
   <form action="http://www.ifunmac.com/wp-login.php" method="post">
   <input type="text" name="log" value="825245794@qq.com">
    <input type="text" name="pwd" value="A21210000">
     <input type="text" name="wp-submit" value="%E7%99%BB%E5%BD%95">
      <input type="text" name="redirect_to" value="http%3A%2F%2Fwww.ifunmac.com">
      
      <input type="text" name="testcookie" value="1">
      <input type="submit">
   </form>
  </body>
</html>
