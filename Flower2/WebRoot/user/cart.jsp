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
    
    <title>My JSP 'cart.jsp' starting page</title>
    
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
.input1 {
	height: 25px;
	width: 50px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	background-color: #FFE8E8;
	padding-top: 8px;
}
.input2 {
	height: 25px;
	width: 50px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	background-color: #FFFFFF;
	text-align: center;
}
.STYLE4 {	font-size: 14px;
	font-weight: bold;
}
.STYLE3 {font-size: 16px}
.STYLE5 {color: #FF0000}
a{
text-decoration: none;
}
-->
</style>


<script type="text/javascript">
   function updateNum(id){
	   document.form1.action="shoping/updateShopingNum?cartid=id";
	   document.form1.submit();
	}
	
</script>
</head>
 
  <s:include value="head.jsp"></s:include>
<body bgcolor="#FDF3EE">
    <div align="center">
   <table width="1000" height="600" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
      <tr>
        <td valign="top"><div class="STYLE5" id="title">购物车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
         <a href="shoping/deleteAllCart">清空购物车</a></div>
         
         
          
          
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30"><div align="center" class="STYLE1">序号</div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>商品名称</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>商品详情</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>单价</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>数量</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>金额</strong></div></td>
                <td height="30" class="inputtitle"><div align="center"><strong>操作</strong></div></td>
              </tr>
              
              <!-- ****************************************************** -->
              <s:iterator value="listCart" status="t"> 
                  <tr>
                <td height="30" align="center"><s:property value="#t.count"/>  </td>
                <td height="30" align="center"><s:property value="gname"/>        </td>
                <td height="30" align="center"><img alt="" width="50px" src="upload/<s:property value='gpic'/>">  </td>
                <td height="30" align="center"><s:property value="gnprice"/>     </td>
                <td height="30" align="center">
                  <form id="form0" name="form0" method="post" action="shoping/updateShopingNum">
                  <input type="text" value="<s:property value='gnum'/>" name="gnum" class="input2">
                  <input type="hidden" value="<s:property value='cartid'/>" name="cartid" >   
                  <input type="submit" value="更新" >
                </form>
                </td>
                <td height="30"><div align="center">
                 <s:property value="gnum*gnprice"/>
                </div></td>
                <td height="30"><div align="center">
                <a href="shoping/deleteCart?cartid=<s:property value='cartid'/>">删除</a></div></td>
              </tr>
              
              </s:iterator>
           <!-- ****************************************************** -->    
              
             
              <tr>
                <td height="30">&nbsp;</td>
                <td height="30">&nbsp;</td>
                <td height="30">&nbsp;</td>
                <td height="30">&nbsp;</td>
                <td height="30" colspan="3"><div align="right">&nbsp;&nbsp;&nbsp;&nbsp; </div></td>
              </tr>
              <tr>
                <td height="30">&nbsp;</td>
                <td height="30">&nbsp;</td>
                <td height="30">&nbsp;</td>
                <td height="30">&nbsp;</td>
                <td height="30" colspan="3"><div align="right"><span class="STYLE4">&nbsp;合计 ：￥ 
                <input type="text" name="amount" value="<s:property value='amount'/>" class="input1">
                
                  &nbsp;&nbsp;</span><span class="STYLE3">&nbsp;&nbsp; &nbsp;</span></div></td>
              </tr>
              <tr>
               
                <td height="92">&nbsp;</td>
                <td height="92">&nbsp;</td>
                <td height="92">&nbsp;</td>
                <td height="92">&nbsp;</td>
                <td height="92" colspan="3">
                <form id="form1" name="form1" method="post" action="shoping/getOrderConfirmCart">
                  <div align="center">
                    <input name="Submit2" type="submit" class="buttom" value="结  算" />
                  </div>
                   </form> 
               </td>
                
              </tr>
            </table>
                </td>
     </tr>
   </table>
    <!--**********************************************************************************************************************-->

  </div>
</body>
</html>