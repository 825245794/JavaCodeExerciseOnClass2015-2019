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
    
    <title>My JSP 'orderDetail.jsp' starting page</title>
    
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
	</style>
  </head>
<body bgcolor="#FDF3EE">
    <div align="center" id="conn">
        <div id="d1">
    <table width="800" height="600" border="1" cellpadding="0" cellspacing="0" >
      <tr>
        <td valign="top"><div class="STYLE5">订单详情
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="admin/getShowOrder" target="mainFrame">返&nbsp;&nbsp;&nbsp;&nbsp;回</a>
        </div>
         
        
          
          
            <table width="100%" border="1" cellspacing="0" cellpadding="0">
              <tr>
                <td height="40"><div align="center" class="STYLE1">序号</div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>商品名称</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>商品详情</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>单价</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>数量</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>金额</strong></div></td>
              
              </tr>
              
              <!-- ****************************************************** -->
              <s:iterator value="listOrderDetail" status="t"> 
                  <tr>
                <td height="30" align="center"><s:property value="#t.count"/>  </td>
                <td height="30" align="center"><s:property value="gname"/>        </td>
                <td height="30" align="center"><img alt="" width="50px" src="upload/<s:property value='gpic'/>">  </td>
                <td height="30" align="center"><s:property value="gnprice"/>     </td>
                <td height="30" align="center"><s:property value="gnum"/> </td>
                <td height="30" align="center"><s:property value="gnum*gnprice"/></td>
              
              </tr>
              </s:iterator>
           <!-- ****************************************************** -->    
            </table>
              </td>
     </tr>
   </table>
    

        </div>
    </div>  
</body>
</html>


