<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
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
padding: 0;
margin: 0;
}


#dt {
width:900px;
height:135px;
margin: 0 auto;
border:1px solid  #9966FF;

}
#header {
  width:100%;
  height:120px;
  background-image:url(images/adminlogo.jpg);
  font-family:"华文行楷";
  font-size:35px;
  color:#2B3629;
  text-align:center;
  padding-top:50px;
  
  

}
#menu {
  width:100%;
  height:40px;
 }
#menu ul{
margin: 0px;
padding:0px;

list-style:none;
}
#menu li{
float:left;

}

#menu a{
display:block;
width:108px;
height:40px;
text-decoration:none;
text-align:center;
color:#4F25A5;
font-family:"新宋体";
padding-top:8px;
margin-left:2px;
margin-right:2px;
background-color:#FEFBF5;

}

a:LINK{
}
a:hover{
color:#77555E;
background-color:#E1FCA5
}
-->
</style>

</head>

<body bgcolor="#FDF3EE">
<div align="center" style="width: 100%;">
<div id="dt" align="center">
  <div id="header">
       欢迎登录后台管理&nbsp;&nbsp;&nbsp;&nbsp;<a href="loginout.action">退出</a>系统
  </div>
  <div id="menu" >
       <ul >
	   <li ><a href="admin/getAllGoods?currpage=1" target="mainFrame">商品管理</a></li>
	   <li><a href="admin/getAddGoods" target="mainFrame">商品添加</a></li>
	    <li><a href="admin/getType" target="mainFrame">类型管理</a></li>
	   <li><a href="admin/getShowOrder" target="mainFrame">订单管理</a></li>
	   <li><a href="#">用户管理</a></li>
	   <li><a href="#">评论管理</a></li>
	   <li><a href="admin/getNotice" target="mainFrame">公告管理</a></li>
	   <li><a href="admin/exit" target="_top" >退出系统</a></li>
	   </ul>
  </div>
  
 
</div>


</div>
</body>
</html>
