<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
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
padding:0;
margin:0;
  
}
  #head{
	  width:100%;
	  height:80px;
	  background-image:url(images/1420482738286979730.jpg);
	  }

.menu {
	width:100%;
	height:20px;
	font-family: "宋体";
	font-size: 16px;
	color: #3E0066;
	font-weight: 800;
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

-->
</style>
</head>


<body bgcolor="#FDF3EE">
<div align="center">
  <table width="1000" border="1" cellspacing="0" cellpadding="0" id="top">
    <tr>
      <td height="40" colspan="6">
      <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
        <tr>
          <td width="45%" align="center">
      <s:if test="#session.user.userid!=null">   
           <s:property value="#session.user.userid"/> 欢迎你回来！  | <a href="#">个人中心</a> | <a href="user/exit">退出系统</a>
      </s:if>
      <s:else> 
                  欢迎光临鲜花礼品网！&nbsp; <a href="user/login.jsp">登录</a>&nbsp; |&nbsp;&nbsp;
                   <a href="user/regist.jsp">注册</a>
      </s:else>
          </td>
          <td width="55%"><div align="center">
           <a href="user/main">返回首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
          <a href="shoping/showCart">购物车 </a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="shoping/getShowOrder">订单查询&nbsp;&nbsp;</a> | &nbsp;&nbsp;<a href="#">帮助</a>&nbsp;&nbsp;</div></td>
        </tr>
      </table>       </td>
    </tr>
    <tr >
      <td height="70px" colspan="6" >
	   <div id="head" style="height:70px;">	   </div>	  </td>
    </tr>
   
  </table>
 </div>

</body>
</html>
