<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>时钟</title>
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
    <input type="text" value="" id="time" /> <br>
  </body>
  <script language="javascript" src="RESOURCES/JS/AjaxRequest.js"></script>
  <script language="javascript">
  window.onload = function(){
      window.setInterval("AjaxConnection()", 500); 
  }
  function AjaxConnection(){
      var loader=new net.AjaxRequest("getTime.jsp?nocache="+new Date().getTime(), getTime, onError,  "GET");
  }
  function getTime(){
      var info=this.req.responseText;
      info=info.substring(info.indexOf(">")+1, info.lastIndexOf("<"));
      document.getElementById("time").value=info;
  }
  function onError(){
      document.getElementById("time").value="Error";
  } 
  </script>
</html>
