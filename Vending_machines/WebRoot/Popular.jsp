<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>.table-c table{border-right:1px solid #F00;border-bottom:1px solid #F00} 
.table-c table td{border-left:1px solid #F00;border-top:1px solid #F00} </style>
</head>
<%@page import=" java.util.ArrayList" %>
<%@page import=" java.util.List" %>
<%@page import=" Admin.save_popular" %>
<%@taglib prefix="s" uri="/struts-tags" %>
 <%List<save_popular> list=(List<save_popular>)request.getAttribute("list"); 

 %>
<body>
<div class="table-c">
<table style="width:90%;height:60%;margin-left: 0px;">
<tr><td align="left"style="width:20%;text-align: center;">机器编号</td><td align="left"style="text-align: center;">热销饮料预览图</td><td align="left"style="text-align: center;">热销饮料名称</td></tr>
<%for(int i=0;i<list.size();i++){ %>
<tr>
<td align="left" style="text-align: center; "><%=list.get(i).getMno() %></td>
<td align="left" style="text-align: center;width:20px;"><img align="middle" src="<%=list.get(i).getPath() %> "style="width:150px;"></td>
<td align="left" style="text-align: center;"><%=list.get(i).getDname()%></td>

</tr>
<%} %>

</table>
</div>
</body>
</html>