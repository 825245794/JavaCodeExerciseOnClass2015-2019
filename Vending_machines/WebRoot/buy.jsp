<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@taglib prefix="s1" uri="/struts-tags" %>
<%
 request.setAttribute("city",request.getAttribute("city_spell"));
 String mno=request.getParameter("mno");
	 request.setAttribute("mno",mno);
 %>
<script type="text/javascript">
function t(){
history.back(-1);
}
function f(i){
for(var a=0;a<4;a++){
document.getElementById(a).style.background="black";
}
document.getElementById(i).style.background="orange";
var q=document.getElementById("image");
if(i==0)q.src="img/wx.png";
if(i==1)q.src="img/qq.png";


}
</script>
<%@taglib prefix="s" uri="/struts-tags" %>
<style>
#a{text-decoration: none;}
body{ padding: 0px;
	  margin: 0px; 
	  background-color: #B5CDEB;
	}

</style>

</head>
<body>
<s1:div>
<table border="0" style="width:100%;'" height="35" cellpadding="0" cellspacing="0" align="center" bgcolor="#D4EAEE" >
<tbody><tr>
<!--<td align="left" height="10" width="20"></td>-->
<td align="left" height="10" width="30" style="background-color: #D4EAEE;"><a href="" id="a"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="10" color="black" >结算支付</font></a></td>

<td align="left" height="10" width="190"style="background-color: #D4EAEE;" ><a href="#" id="a" onClick="javascript :history.back(-1);"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="4"></font></a></td>

<td align="left" height="10" width="30"style="background-color: #D4EAEE;"><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>

<td align="left" height="10" width="30"style="background-color: #D4EAEE;"><a href=""><font color="#FFFFFF"><font face="黑体, 华文宋体, 华文细黑, 微软雅黑, 新宋体" size="-2"></font></font></a></td>
</tr>
</tbody></table>
</s1:div>
<s1:div style="width:50%; height:20%; float:left;">
<img   style="height:100%;width:70%;"src=<s:property value="path"/>>
</s1:div>
<s1:div cssStyle="width:45%; height:80%;float:right; ">
<s1:form action="paying.action" method="post">
<s1:hidden name="dno" value="%{dno}"></s1:hidden>
<s1:hidden name="mno" value="%{mno}"></s1:hidden>
<table bgcolor="white"  style="width:100%; height:100%;">
<tr><td style="text-align: center;">购买商品：<s:property value="dname"/></td></tr>
<tr><td style="text-align: center;">购买价格：<s:property value="sell_price"/></td></tr>
<tr><td align="center"><img  id="image" style="width:50%; height:60%;"  src="img/wx.png" ></td></tr>
<tr height=40px;><td align="center" height=40px; style="height:100%; width:100%;" ><s1:submit cssStyle= "width: 100%;height: 35px; border: none;color: white; background-color: green;"  value="我已完成支付"></s1:submit></td></tr>
<tr height=30px;><td align="center" height=40px;><s1:reset cssStyle="width:100%;height:35px; border: none;color: white; background-color: orange;" onclick="t()" value="取消支付"></s1:reset></td></tr>
</table></s1:form></s1:div>
<s1:div cssStyle="width:100%;float:;background-color:cyan;">
<table bgcolor="black" style="color:white;height:6%;width:100%;position:absolute;bottom:0px;">
<tr><td id="0" onclick="f(0)" align="center" style="background:orange;">微信支付</td><td  id="1"  align="center" onclick="f(1)">QQ支付</td><td  id="2"  align="center" onclick="f(2)">支付宝支付</td><td  align="center" id="3" onclick="f(3)">钱包支付</td></tr>
</table>
</s1:div>

</body>
</html>