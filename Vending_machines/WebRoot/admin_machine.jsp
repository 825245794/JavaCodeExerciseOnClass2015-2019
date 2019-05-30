<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var i=0;
function f(j){

	var booler=false;
	var name=document.getElementsByName("select");
	if(name[j].checked){
		booler=true;
	}
	if(booler==false){
	i--;
	document.getElementById("sub").value="提交 "+i+"/10";
	document.getElementById("sub").disabled=true;
	if(i==10){
		document.getElementById("sub").disabled=false;
	}
	}
	else{
	i++;
	document.getElementById("sub").value="提交 "+i+"/10";
	if(i==10){
		document.getElementById("sub").disabled=false;
	}
	else{
	document.getElementById("sub").disabled=true;
	}
	}

}
</script>
<%@ page import="java.util.*"%>
<%@ page import="database.drink"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% 
 List<drink> list=(List<drink>)request.getAttribute("list");
 String mno=request.getAttribute("mno").toString();
 %>
</head>
<body>
<p align="center">新增机器表单</p>
<s:div align="center">
<form action="machine.action" method="post" enctype="multipart/form-data" namespace="/">
机器编号:<input type="text" value="<%=mno%>"disabled="disabled" ><br>
<input type="hidden" value="<%=mno%>" name="mno" >
机器地区:<input type="text" name="city"><br>
地区拼音:<input type="text" name="spell" ><br>
<%for(int i=0;i<list.size();i++) {%>
<%if(i%5==0){ %>
<br>
<%} %>
<input type="checkbox" id="select" name="select" value="<%=list.get(i).getDNO()%>" onclick="f(<%=i%>)"><%=list.get(i).getDNAME()%>
<%} %>
<br>
<input type="submit" value="提交 0/10" align="middle" id="sub" disabled="disabled">
</form>
</s:div>
</body>
</html>