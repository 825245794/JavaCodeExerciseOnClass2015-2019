<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'notice.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <link href="admin/css/mycss.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
 *{
padding: 0;
margin: 0;
}
	 
	</style>
 
  <style type="text/css">
<!--
.STYLE1 {font-size: 18px}
-->
  </style>
</head>
   <body bgcolor="#FDF3EE">
    <div align="center" id="conn">
        <div id="d1">
          <form id="form1" name="form1" method="post" action="">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="40">&nbsp;&nbsp;&nbsp; <span class="STYLE1">标题：</span>
                  <label>
                  <input name="ntitle" type="text" class="input1" />
                </label></td>
              </tr>
              <tr>
                <td height="250" valign="top"><label>
                  <textarea name="ndetail" cols="120" rows="20"></textarea>
                </label></td>
              </tr>
              <tr>
                <td height="40" >
                  <div align="center">
                    <input name="Submit" type="submit" class="button" value="发   布" />
                    </div>
                </td>
              </tr>
            </table>
          </form>
        </div>
    </div>  
  </body>
</html>

