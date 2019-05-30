<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'exit.jsp' starting page</title>
    
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
	 
	.STYLE1 {
	font-family: "华文行楷";
	font-size: 24px;
}
 .STYLE2 {font-family: "华文行楷"; font-size: 24px; color: #793777; }
 </style>
  </head>
<body bgcolor="#FDF3EE">
    <div align="center" id="conn">
        <div id="d1">
    <table width="800" height="600" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td valign="top"><div align="center">
          <p class="STYLE1">&nbsp;</p>
          <p class="STYLE1">&nbsp;</p>
          <p class="STYLE1">&nbsp;</p>
          <p class="STYLE1">&nbsp;</p>
          <p class="STYLE2">谢谢使用本系统，你已经安全退出了</p>
        </div></td>
      </tr>
   </table>
    

        </div>
    </div>  
</body>
</html>

