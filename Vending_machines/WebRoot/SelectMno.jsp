<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选择编号</title>
</head>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import=" java.util.Vector" %>
<%Vector<String> v=(Vector<String>)request.getAttribute("vectormno"); 

%>
<style>
#a{text-decoration:none;
} 
td:link {background-color: cyan;}     /* 未访问的链接 */
td:visited {background-color: orange;}  /* 已访问的链接 */
td:hover {background-color:  orange;}  
td:active {color: cyan;}
body{ padding: 0px;
	  margin: 0px; 
	  background-color: #B5CDEB;
	}
#bg{ height:100%;
width:100%;  
text-align: center;
border:none; outline:none; background-color: transparent;

}

</style>

<body>
<table border="0" style="width:100%;'" height="35" cellpadding="0" cellspacing="0" align="center" bgcolor="#D4EAEE" >
<tbody><tr>
<!--<td align="left" height="10" width="20"></td>-->
<td align="left" height="10" width="30" style="background-color: #D4EAEE;"><a href="" id="a"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="10" color="black" >选择机器编号</font></a></td>

<td align="left" height="10" width="100"style="background-color: #D4EAEE; ><a href="#" id="a" onClick="javascript :history.back(-1);"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="4">返回</font></a></td>

<td align="left" height="10" width="30"style="background-color: #D4EAEE;><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>

<td align="left" height="10" width="30"style="background-color: #D4EAEE;><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>
</tr>
</tbody></table>
<div style="height:10%; width:100%;"><font size="5"><%=request.getAttribute("citynew") %></font></div>
<div>
<%for(int i=0;i<v.size();i++){ %>
<form action="Select.action" name="form1" method="post">
<input type="hidden" name="city" value="<%=request.getAttribute("citynew") %>">
<input type="hidden" name="type" id="type" value="<s:property value="type"/>">
<table   style="height:40px; width:8%; margin-bottom: 20px; float: left">
<tr><td bgcolor="cyan"> <input height="10px"  type="submit" id="bg" name="mno" value="<%=v.get(i)%>"></td></tr>
</table>
</form>
<%} %>
</div>


</body>
</html>