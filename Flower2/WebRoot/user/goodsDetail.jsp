<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goodsDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript">
   function addCart(){
	   document.form1.action="shoping/addCart";
	   document.form1.submit();
	}
	function checkNum(){
	    var t=document.getElementById("gnum").value;
	    var n=parseInt(t);
	    if(n<0 || isNaN(t)){
	       document.getElementById("gnum").value=1;
	    }
	}
</script>
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
  
.op{
  text-decoration: line-through;
}
-->
</style>
</head>
 
  <s:include value="head.jsp"></s:include>
  
  
<body bgcolor="#FDF3EE">
    <div align="center">
   <table width="1000" height="638" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
   
     <tr>
        <td valign="top">
        
        <form id="form1" name="form1" method="post" action="shoping/getOrderConfirm">
     <!-- 需要把商品的详细信息传递给 购物车-->   
        <input type="hidden" name="gid" value="<s:property value="listGoods[0].gid"/>">
       
   <!-- *********************************************************** -->      
         
          <table width="100%" border="1" cellspacing="0" cellpadding="0">
            <tr>
              <td width="250px" height="40" rowspan="5"> <img alt="" src="upload/<s:property value='listGoods[0].gpic'/>">  </td>
              <td  height="50">&nbsp;鲜花名称：<s:property value="listGoods[0].gname"/>  </td>
            </tr>
            <tr>
              <td height="68"><p>&nbsp;原&nbsp;价: <span class="op"><s:property value="listGoods[0].goprice"/> </span>    </p>
                  <p>&nbsp;</p>
                <p>&nbsp;促销价:<s:property value="listGoods[0].gnprice"/> </p></td>
            </tr>
            <tr>
              <td height="50">&nbsp;销量：&nbsp;<s:property value="listGoods[0].gsales"/>&nbsp; |&nbsp;&nbsp; 累计评价： </td>
            </tr>
            <tr>
              <td height="50">&nbsp;数量：
               <input style="width: 40px; height: 30px;" type="text" name="gnum" value="1" onchange="checkNum()" id="gnum">  </td>
            </tr>
            <tr>
              <td height="50"><label> 
                &nbsp;&nbsp; 
                <input name="Submit" type="submit" class="buttom" value="立即购买" />
             &nbsp;&nbsp; 
             <input name="Submit2" type="button" class="buttom" value="加入购物车"  onclick="addCart()"/>
              </label></td>
            </tr>
          </table>
                <table width="100%" height="366" border="1" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="44" bgcolor="#FFCCFF">&nbsp; 商品描述：</td>
                  </tr>
                  <tr>
                    <td height="82"><s:property value="listGoods[0].gdetaile"/></td>
                  </tr>
                  <tr>
                    <td height="43" bgcolor="#FFCCFF">&nbsp; 商品评论:</td>
                  </tr>
                  <tr>
                    <td height="195" valign="top">
                      



                     </td>
                  </tr>
                </table>
        </form>
        </td>
     </tr>
   </table>
    <!--**********************************************************************************************************************-->

  </div>
</body>
</html>
 <s:include value="bottom.jsp"></s:include>