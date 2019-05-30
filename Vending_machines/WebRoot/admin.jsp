<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理&nbsp;&nbsp;&nbsp;&nbsp;<a href="loginout.action">退出</a>系统</title>
</head>



<style>
body{ padding: 0px;
	  margin: 0px; 
	  background-color: #B5CDEB;
	}
a{text-decoration:none;
	color: white;
} 
#tds{
background-color: orange; color:white;text-align: center; height:50px;
}	
</style>
<%@taglib prefix="s" uri="/struts-tags" %>
<body>
<s:div>
<table border="0" style=" width:100%; height:20%;" cellpadding="0" cellspacing="0" align="center"; bgcolor="#D4EAEE"; id="b">
<tbody><tr>
<!--<td align="left" height="10" width="20"></td>-->
<td align="left" height="10" width="30"><a href="" id="a"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="4" color="black" >售货机管理系统</font></a></td>
<td align="left" height="10" width="30"><a href="" id="a"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="2" color="black"  >欢迎回来:<s:property value="username"/></font></a></td>
<td align="left" height="10" width="210"style="color:blue;background-color: #D4EAEE; "onClick="javascript :history.back(-1);"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="4">返回</font></td>
<td align="left" height="10" width="30"><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>
<td align="left" height="10" width="30"><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>
</tr>
</tbody></table>
</s:div>
<s:div >
<table style="float:left;black-color:blue; width:20%;height:80%;">
<tr><td id="tds"><a target="myiframe" href="CityChange?type=income">机器收入查询</a></td></tr>
<tr><td id="tds"><a target="myiframe" href="CityChange?type=search_stock">机器库存管理</a></td></tr>
<tr><td id="tds"><a target="myiframe" href="admin_popular">机器热销饮料</a></td></tr>
<tr><td id="tds"><a target="myiframe" href="admin_drink.jsp">新增饮料</a></td></tr>
<tr><td id="tds"><a target="myiframe" href="getdrink.action">新增机器</a></td></tr>
<tr><td id="tds"><a target="myiframe" href="admin_add.jsp">新增成员</a></td></tr>
<tr><td id="tds"><a  href="index.jsp">登出</a></td></tr>
</table>
</s:div>
<s:div cssStyle="height:100%;width:80%;float:right;">
<form target="parent">
<iframe name="myiframe"  scrolling="no"  frameborder="0" style="width:100%;height:2000px;" marginheight="0" marginwidth="0" scrolling="no" src="admin_welcome.jsp"></iframe>
</form>
</s:div>
</html>