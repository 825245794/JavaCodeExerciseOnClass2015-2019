<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <jsp:useBean id="v" class="com.shop.bean.Load"></jsp:useBean>
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
    <form action="add">
    Shop :<input type="text" name="name"><br>
    <input type="submit" value="提交">
    </form>
    
    <table>
    <tr>
    <td>序号</td>
    <td>内容</td>
    <td>操作</td>
    </tr>
    
    
    <% for(int i=0;i<v.getList().size();i++){ %>
    
    <tr>
    <form action="update" method="get">
    <td><%= v.getList().get(i).getId() %></td>
    <td><input name="name" type="text" value="<%= v.getList().get(i).getShopname() %>"></td>
    <input value="<%= v.getList().get(i).getId() %>" type="hidden" name="id">
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;<a href="del?id=<%= v.getList().get(i).getId() %>">删除</a></td>
    </form>
    </tr>
   <% } %>
    </table>
  </body>
</html>
