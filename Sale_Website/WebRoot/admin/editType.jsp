<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Type.jsp' starting page</title>
    
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
	  width: 800px;
	  height: 100%;
	  background-color: #FFFFFF; 
	  margin: 0 auto;
      border:1px solid  #9966FF;
	  }
	</style>
  <link href="admin/css/mycss.css" rel="stylesheet" type="text/css" />
</head>
   <body bgcolor="#FDF3EE">
    <div align="center" id="conn" >
        <div id="d1">
		   <h1>&nbsp;</h1>
		   <h1>&nbsp;</h1>
		   <h1>类型管理</h1>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
		   <table width="600" border="1" cellspacing="0" cellpadding="0" align="center">
             <tr>
               <td height="27" class="title">类型编号</td>
               <td class="title">类型名称</td>
               <td class="title">操作</td>
             </tr>
            <s:iterator value="listType" var="t">
              <tr>
                 <td><s:property value="typeid"/></td>
                 <td> <s:property value="typename"/></td>
                 <td><a href="#">修改</a> | <a href="#">删除</a>
              </tr>
            </s:iterator>
           </table>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
		   <form id="form1" name="form1" method="post" action="admin/addType">
		     <span class="inputtext">类型名称：</span>
		     <label>
		     <input name="typename" type="text" class="input1" />
		     </label>
                     &nbsp;&nbsp; 
                     <label>
                     <input type="submit" name="Submit" value="添 加" />
                     </label>
		   </form>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
        </div>
    </div>  
  </body>
</html>

	
