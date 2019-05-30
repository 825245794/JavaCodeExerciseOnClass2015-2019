<%@page import="com.shop.bean.Message"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Message> list = (List<Message>)request.getAttribute("list");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  
  <body>
    <form action="servlet/SearchServlet">
    <select name="select"><option value="default">全部</option>
    <option value="key">商品号查询</option>
    <option value="mohu">模糊商品查询</option>
    
    <option value="zp">正排</option>
    <option value="np">逆排</option>
    </select>
    <input name="value">
    <input type="submit" value="提交">
    </form>
  <% if(list!=null){ %>
<% for(int i=0;i<list.size();i++){ %>
<%=list.get(i).getId() %><%=list.get(i).getShopname() %><br>
    <%} %> <%} %>
  </body>
</html>
