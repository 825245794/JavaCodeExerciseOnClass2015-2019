<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.net.URLDecoder" %>
    <%@page import="java.util.*" %>
    <%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>登陆界面Cookie</title>
</head>
<body>
<%
	Cookie[] cookie=request.getCookies();
	String user="";
	String date="";
	Date data=new Date();
	SimpleDateFormat f=new SimpleDateFormat("yy-MM-dd_HH:mm:ss");
	String today="当前时间:"+f.format(data);
	if(cookie!=null){
		for(int i=0;i<cookie.length;i++){
			if(cookie[i].getName().equals("LJLusers")){
				user=URLDecoder.decode(cookie[i].getValue(),"UTF-8");
			}
			if(cookie[i].getName().equals("LJLTimes")){
				date=cookie[i].getValue();
			}
		}
	}
	
	if("".equals(user)&&"".equals(date)){
%>
	<p>游客您好，欢迎光临，请注册</p><br>
	<form name="form" action="write_cookies.jsp" Method="post">
	用户名：<input name="name" type="text" width="200" value="卢家乐"><br>
	<input name="time" type="text" width="900" value=<%=today %>><br>
	

	<input type="submit" value="提交" width="200">
	</form>
<%
	}else
		{
%>
	<p>欢迎你,<%=user %></p>
	<p>注册时间：<%=date %></p>
<%
		}
%>
</body>
</html>