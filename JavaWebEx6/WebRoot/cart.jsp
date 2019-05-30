<%@page import="com.shop.bean.BookBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cart.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
  </head>
  
  <body>
  <a href="index.jsp">返回主页</a>
共<c:out value="${sessionScope.total }"></c:out> 本书
   <table>
   <c:forEach var="item" items="${sessionScope.list}" varStatus="status">

   <c:if test="${item.bookid=='1' }">
   <tr><td><img src="11.jpg" width="148px"></td><td><c:out value="${item.total}" /></td></tr>
  </c:if>
   
    <c:if test="${item.bookid=='2' }">
   <tr><td><img src="12.jpg" width="148px"></td><td><c:out value="${item.total}" /></td></tr>
   </c:if>
   
   <c:if test="${item.bookid=='3' }">
   <tr><td><img src="13.jpg" width="148px"></td><td><c:out value="${item.total}" /></td></tr>
  </c:if>
   </c:forEach>
   </table>
  </body>
</html>
