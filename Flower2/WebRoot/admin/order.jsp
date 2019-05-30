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
 <link href="admin/css/mycss.css" rel="stylesheet" type="text/css" />
 <style type="text/css">


 *{
padding: 0;
margin: 0;
}
	.STYLE5 {
color: #FF0000;
height: 50px; 
font-size: 25px;
padding-top: 20px;
}
	a{
text-decoration: none;
}  

#st{
width: 100px;
height: 30px;
border: 1px solid;
padding-top:10px;
background-color: #F1B3F9;
} 
	</style>
  </head>
<body bgcolor="#FDF3EE">
    <div align="center" id="conn">
        <div id="d1">
             <table width="100%" height="100%" border="1" cellpadding="0" cellspacing="0" >
      <tr>
        <td valign="top"><div class="STYLE5" id="title">订单信息</div>
         
            <table width="100%" border="1" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10%" height="40"><div align="center" class="STYLE1">序号</div></td>
                <td width="15%" height="40" class="inputtitle"><div align="center"><strong>订单编号</strong></div></td>
                <td width="11%" height="40" class="inputtitle"><div align="center"><strong>总价</strong></div></td>
                <td width="21%" height="40" class="inputtitle"><div align="center"><strong>下单时间</strong></div></td>
                <td width="24%" height="40" class="inputtitle"><div align="center"><strong>订单状态</strong></div></td>
                <td width="19%" height="40" class="inputtitle"><div align="center">操作</div></td>
              </tr>
              <s:iterator value="listOrder" status="t">
                  <tr>
                <td height="40" align="center"><s:property value="#t.count"/> </td>
                <td height="40" align="center"><s:property value="orderid"/></td>
                <td height="40" align="center"><s:property value="amount"/></td>
                <td height="40" align="center"><s:property value="otime"/></td>
                <td height="40" align="center">
                <s:if test="status=='未发货'">
                   <div id="st">
                       <a href="admin/goodsSend?orderid=<s:property value='orderid'/>">发&nbsp;&nbsp;货</a>
                   </div>
                
                </s:if>
                <s:else>
                   <s:property value="status"/>
                </s:else>
               
                
                </td>
                <td height="40" align="center"><div align="center">
                <a href="admin/getOrderDetail?orderid=<s:property value='orderid'/>">查看订单详情</a></div></td>
              </tr>
              
              </s:iterator>
             
            
            </table>
            <p>&nbsp;</p>
              </td>
     </tr>
   </table>
    

        </div>
    </div>  
</body>
</html>