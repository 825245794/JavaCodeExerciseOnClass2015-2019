<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="java.util.*"%>
<%@ page import="database.drink"%>
<jsp:useBean id="s" class="init.GetCityName"></jsp:useBean>
<%String city=request.getParameter("city");
	 String id=request.getParameter("cityID");
	 request.setAttribute("city_spell", city);
	 request.setAttribute("mno", id);
	 s.setCity(city);
	 city=s.getCity();
	 List<drink> list=(List<drink>)request.getAttribute("list");
	 String a=list.get(0).getDNAME();
%>

<title>自动售货机 </title>
<style>
.class1 {float:left;}
#a{text-decoration:none;
} 

body{ padding: 0px;
	  margin: 0px; 
	  background-color: #B5CDEB;
	}

#b{filter:alpha(opacity=1);  
  -moz-opacity:0.1;  
  -khtml-opacity: 0.5;  
  opacity: 0.8;
	}
#bgtd{
	background-color:#D7D9DA;
}
#font_style{
text-align: center;
text-decoration: none; 
color: white; 
font-size: 20px; 
height:100%; width:100%;border:none; outline:none; background-color:transparent;
}

#normal_style{
text-align: center;
text-decoration: none; 
color: black; 
font-size: 18px; 
height:100%; width:100%;border:none; outline:none; background-color:transparent;
}
</style>
</head>
<body>
<div>
<table border="0" style="width:100%; height="35" cellpadding="0" cellspacing="0" align="center" bgcolor="#D4EAEE" id="b">
<tbody><tr>
<!--<td align="left" height="10" width="20"></td>-->
<td align="left" height="10" width="30"><a href="" id="a"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="6" color="black" >自动售货机</font><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="5" color="red">&nbsp;<%=city %><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="2" color="red"><%="   机器编号:"+id %></font></font></a></td>

<td align="left" height="10" width="100" ><a href="CityChange?type=change" id="a" ><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="4">切换城市</font></a></td>

<td align="left" height="10" width="30"><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>

<td align="left" height="10" width="30"><a href="login.jsp" id="a"><font color="black"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="+1">管理员登录</font></font></a></td>
</tr>
</tbody></table>
</div>
<div style="height: 50px;"></div>
<div>
<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(0).getPATH() %>">
 <table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-left: 20px; margin-right: 20px;width: 16%; height: 15%; background-color: white; margin-bottom: 50px;">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(0).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(0).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(0).getSell_price()%>" disabled="disabled"></td></tr>

<%if(list.get(0).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(0).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(0).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(1).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-bottom: 60px;margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(1).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(1).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(1).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(1).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(1).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(1).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(2).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-bottom: 60px;margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(2).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(2).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(2).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(2).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(2).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(2).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(3).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-bottom: 60px;margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(3).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(3).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(3).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(3).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(3).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(3).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(4).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-bottom: 60px;margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(4).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(4).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(4).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(4).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(4).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(4).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>
</div>




<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(5).getPATH() %>">
 <table align="left" class="class1" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-left: 20px; margin-right: 20px;width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(5).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(5).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(5).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(5).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(5).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(5).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(6).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(6).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(6).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(6).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(6).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(6).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(6).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(7).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(7).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(7).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(7).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(7).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(7).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(7).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(8).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(8).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(8).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(8).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(8).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(8).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(8).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>

<form action="Buy.action" method="post">
<input type="hidden" name="mno" value="<%=id %>">
<input type="hidden" name="path" value="<%=list.get(9).getPATH() %>">
<table class="class1" align="left" id="b" border ="0" cellpadding="0" cellspacing="0" style="margin-left: 20px; margin-right: 20px; width: 16%; height: 15%; background-color: white; ">
 <tr height="210" ><td align="center"><img  height="210" alt="" src=<%=list.get(9).getPATH() %> align="middle" style="width:100%;"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="dname" value="<%=list.get(9).getDNAME() %>" disabled="disabled"></td></tr>
<tr height="30"><td id="bgtd" style="text-align: center;"><input type="text" id="normal_style" name="sell_price" value="￥<%=list.get(9).getSell_price()%>" disabled="disabled"></td></tr>
<%if(list.get(9).getStock().equals("0")){ %>
<tr height="50"  style="background-color: gray;"><td ><input type="hidden" name="dno" value="<%=list.get(9).getDNO() %>"> 
<input id="font_style"  type="text" value="已售罄" disabled="disabled"></td></tr>
<%}else{ %>
<tr height="50"  style="background-color: orange;"><td ><input type="hidden" name="dno" value="<%=list.get(9).getDNO() %>"> 
<input id="font_style"  type="submit" value="立刻购买"></td></tr>
<%} %>
</table>
</form>
</div>


</body>
</html>