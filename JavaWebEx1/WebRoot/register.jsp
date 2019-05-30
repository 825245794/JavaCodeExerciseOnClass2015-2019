<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
  <form action="FormServlet">
    用户注册 <br>
    用户名:<input type="text" name="username"><br>
    密码:<input type="text" name="password"><br>
    性别:<input type="radio" name="sex" value="男">男<input type="radio" name="sex" value="女">女<br>
    年龄:<input type="text" name="age"><br>
    兴趣:<input type="checkbox" name="fav" value="文学" id="fav">文学<input type="checkbox" name="fav" value="体育" id="fav">体育<input  id="fav" type="checkbox" name="fav" value="电脑">电脑<br>
    学历:<select name="xl"><option value="学士">学士</option><option value="高中">高中</option></select><br>
    邮件地址:<input type="text" name="email"><br>
    简历:<input type="text" name="jl"><br>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
    </form>
    <jsp:include page="WEB-INF/index.jsp"></jsp:include>
  <c:set  ></c:set>
  <c:out value=""  ></c:out>
  </body>
</html>
