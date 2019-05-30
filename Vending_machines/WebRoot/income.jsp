<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>.table-c table{border-right:1px solid #F00;border-bottom:1px solid #F00} 
.table-c table td{border-left:1px solid #F00;border-top:1px solid #F00} </style>
<%@page import=" java.util.ArrayList" %>
<%@page import=" java.util.List" %>
<%@page import=" Admin.save_income" %>
<%@taglib prefix="s" uri="/struts-tags" %>
 <%List<save_income> list=(List<save_income>)request.getAttribute("list"); 
 	String mno=request.getAttribute("mno").toString();
 	String profit=request.getAttribute("profit").toString();
 	String coat=request.getAttribute("coat").toString();
 	String tol=request.getAttribute("tol").toString();
 %>
<body>
<p align="left">机器编号:<%=mno %></p>
<div class="table-c">
<table style="width:90%;height:60%;margin-left: 0px;">
<tr><td align="left"style="width:20%;text-align: center;">预览图</td><td align="left"style="text-align: center;">名称</td><td align="left"style="text-align: center;">进货价</td><td align="left"style="text-align: center;">销售价</td><td align="left"style="text-align: center;">当前库存</td><td align="left"style="text-align: center;">已出售</td></tr>
<%for(int i=0;i<list.size();i++){ %>
<tr>
<td align="center"><img style="width:22%;"align="middle" src="<%=list.get(i).getPath() %>"><input type="hidden" value="<%=list.get(i).getDno() %>" name="dno"><input type="hidden" value="<%=mno %>" name="mno"></td>
<td align="left" style="text-align: center;"><%=list.get(i).getDname() %></td>
<td align="left" style="text-align: center;"><%=list.get(i).getBuy_price() %></td>
<td align="left" style="text-align: center;"><%=list.get(i).getSell_price() %></td>
<td align="left" style="text-align: center;"><%=list.get(i).getStock() %></td>
<td align="left" style="text-align: center;"><%=list.get(i).getHassell() %></td>
</tr>
<%} %>
<tr><td></td><td></td><td></td><td></td><td style="text-align: right; color:red;">本机入货总支出:</td><td style="text-align: center;"><%=coat %></td></tr>
<tr><td></td><td></td><td></td><td></td><td style="text-align: right; color:red;">本机销售总收入:</td><td style="text-align: center;"><%=tol %></td></tr>
<tr><td></td><td></td><td></td><td></td><td style="text-align: right; color:red;">本机销售总利润:</td><td style="text-align: center;"><%=profit %></td></tr>
</table>
</div>
</body>
</html>