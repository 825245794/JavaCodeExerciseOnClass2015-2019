<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'comment.jsp' starting page</title>
    
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
.buttom {
	font-family: "宋体";
	font-size: 14px;
	background-color: #F779C8;
	height: 30px;
	width: 100px;
	border: 1px solid #000000;
	letter-spacing: 0.24em;
}
#title {
	font-family: "宋体";
	font-size: 18px;
	font-weight: bold;
	letter-spacing: 0.4em;
	height: 30px;
	padding-top: 10px;
	text-align: center;
}
.inputtitle {
	font-family: "楷体";
	font-size: 16px;
	letter-spacing: 0.2em;
}
.STYLE1 {font-family: "楷体"; font-size: 16px; letter-spacing: 0.2em; font-weight: bold; }
.input {
	height: 25px;
	width: 150px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	background-color: #FFE8E8;
}
.input2 {
	height: 25px;
	width: 50px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	background-color: #FFE8E8;
}
.STYLE4 {	font-size: 14px;
	font-weight: bold;
}
.STYLE3 {font-size: 16px}
.STYLE5 {color: #FF0000}
a{
text-decoration: none;
}
-->
</style>



</head>
 
  <s:include value="head.jsp"></s:include>
<body bgcolor="#FDF3EE">
    <div align="center">
   <table width="1000" height="600" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
      <tr>
        <td valign="top"><div class="STYLE5" id="title"> 
        商品评价
        </div>
         
          <form id="form1" name="form1" method="post" action="shoping/comment">
          <input type="hidden" name="gid" value="${param.gid}">
          
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="41"><label>
                  &nbsp;&nbsp;&nbsp; 
                  <input type="radio" name="grade" value="excellent" />  很好    
                  <input type="radio" name="grade" value="good" /> 良好
 
                 <input type="radio" name="grade" value="common" />一般 
                 <input type="radio" name="grade" value="bad" />很差 </label></td>
              </tr>
              <tr>
                <td height="134" valign="top"><label>
                  <textarea name="fdetail" cols="150" rows="10"></textarea>
                </label></td>
              </tr>
              <tr>
                <td height="39" valign="top">
                  <div align="center">
                    <input name="Submit" type="submit" class="buttom" value="发表评论" />
                  </div></td>
              </tr>
            </table>
            <label></label>
          </form>        </td>
     </tr>
   </table>
    <!--**********************************************************************************************************************-->

  </div>
</body>
</html>
