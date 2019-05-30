<%@page import="com.cart.bean.BookBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%List<BookBean> list =  (List<BookBean>)session.getAttribute("list"); %>
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
   <table>
   <% for(int i=0;i<list.size();i++){ %>
   <% if(list.get(i).getBookid().equals("1")){ %>
   <tr><td><img src="11.jpg" width="148px"></td><td><%= list.get(i).getTotal() %></td></tr>
   <%} %> 
   
     <% if(list.get(i).getBookid().equals("2")){ %>
   <tr><td><img src="12.jpg" width="148px"></td><td><%= list.get(i).getTotal() %></td></tr>
   <%} %>
   
     <% if(list.get(i).getBookid().equals("3")){ %>
   <tr><td><img src="13.jpg" width="148px"></td><td><%= list.get(i).getTotal() %></td></tr>
   <%} %>
   <% } %>
   </table>
  </body>
</html>
