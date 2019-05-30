<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--
*{
padding:0;
margin:0;
  
}
  #head{
	  width:100%;
	  height:60px;;
	  background-image:url(images/1420482738286979730.jpg);

.menu {
	width:100%;
	height:20px;
	font-family: "宋体";
	font-size: 16px;
	color: #3E0066;
	letter-spacing: 0.5em;
	font-weight: 800;
}
.leftD {
	font-family: "华文楷体";
	font-size: 16px;
	color: #4F3760;
	letter-spacing: 0.2em;
	height: 120px;
	width: 100%;
	padding-top: 20px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	line-height: 1.5em;
}
.title {
	font-family: "华文彩云";
	font-size: 18px;
	letter-spacing: 0.5em;
	text-indent: 20px;
}

#top a{
text-decoration:none;
}
.STYLE1 {color: #FFFFFF}



   #bottom a{
   text-decoration:none;
   color:#FFFFFF;
   font-size:16px;
       
   }

-->
</style>
</head>
<script type="text/javascript" src="user/js/bundle.js"></script>

<body bgcolor="#FDF3EE">
<div align="center">

  <table width="1000" height="50" border="0" cellpadding="0" cellspacing="0" bgcolor="#344050" id="bottom">
     <tr>
       <td ><div align="center" style="color:#FFFFFF"><a href="#">关于我们</a> | <a href="#">联系我们 </a>| <a href="#">购买帮助</a></div></td>
     </tr>
   </table>
</div>
</body>
</html>
