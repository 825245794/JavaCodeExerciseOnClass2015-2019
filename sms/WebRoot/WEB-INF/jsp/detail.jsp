<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发送</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	 table{
	 border-collapse:collapse;  
     border-spacing:0;  
     border-left:1px solid #888;  
     border-top:1px solid #888;
     width: 100%;     
	 }
	 tr{ 
     border-color: #0094ff;
     }
     td{
      border-right:1px solid #888;  
      border-bottom:1px solid #888;  
      padding:5px 15px; 
      size: 20px;
     }
     th{
      border-right:1px solid #888;  
      border-bottom:1px solid #888;  
      padding:5px 15px; 
     }
     
	</style>
  </head>
  
  <body>
  <p>添加</p>
  <form action="add.do">
  手机号码：<input type="text" name="num"><br>
  宿舍名称：<input type="text" name="room_name" value=""><br>
  宿舍号：&nbsp;&nbsp;&nbsp;<input type="text" name="room_id"><br>
  <input type="submit" value="提交" style="height: 15%;">      
  </form>
  <table cellpadding="0" align="center"> 
    <tr>
    <th><font size="7px">宿舍名</font></th>
    <th><font size="7px">宿舍号</font></th>
    <th><font size="7px">号码</font></th> 
    <th><font size="7px">操作</font></th>
   </tr>
  <c:forEach items="${details}" var="details">
  <tr>
    <td><font size="7px">${details.room_name}</font></td> 
    <td><font size="7px">${details.room_id}</font></td>
    <td><font size="7px">${details.num}</font></td>
    <td><a href="sms:${details.phone_number}&body=你好${details.room_name} ${details.room_id}早餐已送达宿舍门口或楼下后门消防箱，请及时取餐 ${details.num}" name="sendto"><font size="7px">发送短信</font></a></td>
   </tr>
  </c:forEach>
  </table>
  </body>
</html>
