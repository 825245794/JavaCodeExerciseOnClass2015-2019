<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'order.jsp' starting page</title>
    
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
	padding-left: 30px;
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
#st{
width: 100px;
height: 30px;
border: 1px solid;
padding-top:10px;
background-color: #F1B3F9;
} 
-->
</style>


<script type="text/javascript">
   function updateNum(){
	   document.form1.action="shoping/updateShopingNum";
	   document.form1.submit();
	}
	
</script>
</head>
 
  <s:include value="head.jsp"></s:include>
<body bgcolor="#FDF3EE">
<div align="center">
   <table width="1000" height="600" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
      <tr>
        <td valign="top"><div class="STYLE5" id="title">用户订单信息</div>
         
            <table width="100%" border="1" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="40"><div align="center" class="STYLE1">序号</div></td>
                <td width="19%" height="40" class="inputtitle"><div align="center"><strong>订单编号</strong></div></td>
                <td width="11%" height="40" class="inputtitle"><div align="center"><strong>总价</strong></div></td>
                <td width="21%" height="40" class="inputtitle"><div align="center"><strong>下单时间</strong></div></td>
                <td width="15%" height="40" class="inputtitle"><div align="center"><strong>订单状态</strong></div></td>
                <td height="40" class="inputtitle"><div align="center"><strong>操作</strong></div></td>
              </tr>
              <s:iterator value="listOrder" status="t">
                  <tr>
                <td height="40" align="center"><s:property value="#t.count"/> </td>
                <td height="40" align="center"><s:property value="orderid"/></td>
                <td height="40" align="center"><s:property value="amount"/></td>
                <td height="40" align="center"><s:property value="otime"/></td>
                <td height="40" align="center">
               
                   <s:if test="status=='已发货'">
                    <div id="st">
                     <a href="shoping/goodsGet?orderid=<s:property value='orderid'/>">收&nbsp;&nbsp;货</a>
                    </div>   
                    </s:if>
                   <s:else>
                   <s:property value="status"/>
                   
                   </s:else>
            </td>
                <td height="40" align="center">
                <a href="shoping/getOrderDetail?orderid=<s:property value='orderid'/>">详&nbsp;&nbsp;情</a>
               <s:if test="status=='已收货'"> 
                  | <a href="shoping/deleteOrder?orderid=<s:property value='orderid'/>">删&nbsp;&nbsp;除</a>
               </s:if> 
                
                </td>
              </tr>
              
              </s:iterator>
             
            
            </table>
            <p>&nbsp;</p>
              </td>
     </tr>
   </table>
   
  <!--**********************************************************************************************************************-->

  </div>
</body>
</html>