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
 *{
padding: 0;
margin: 0;
}
	  #d1{
	  width: 900px;
	  height: 50px;
	  background-color: #E7E7E7; 
	  margin: 0 auto;
      border:1px solid  #9966FF;
	  }
	</style>
  </head>
   <body bgcolor="#FDF3EE">
    <div align="center" style="width: 100%;height: 100%">
        <div id="d1">
              <a href="#">联系我们</a>
        </div>
    </div>  
  </body>
</html>
</html>
