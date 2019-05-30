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
    
    <title>My JSP 'orderNow.jsp' starting page</title>
    
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
#div1 {
	width: 1000px;
	margin-top: 30px;
}
#div2 {
	float: right;
	width: 495px;
}
#div3 {
	clear: both;
	margin-top: -100px;
}
#div4 {
	float: right;
	height: 200px;
	width: 300px;
	background-color: #FFE1F0;
}
#gnum {
	height: 20px;
	width: 40px;
}
#amount {
	background-color: #FFE1F0;
	height: 20px;
	width: 60px;
	border: 0px;
}
  
a{
text-decoration:none;


}
.STYLE1 {
	font-size: 16px;
	font-weight: bold;
}
.STYLE3 {font-size: 16px}


.input2 {
	height: 25px;
	width: 50px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	background-color: #FFE8E8;
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
        <td valign="top">
		  <form action="shoping/orderSubmit?modle=1" method="post" name="form1">
		
<!-- *************收货地址************************************************************* -->			
		<s:if test="addressNum==0">
		    <div id="div1">
            <p><a href="user/addAddress.jsp?cartid=<s:property value='listGoods[0].cartid'/>">请输入收货地址</a></p>
          </div>
		
		</s:if>
		<s:else>
		
		<div id="div1">
            <p>&nbsp; 确认收货地址&nbsp;</p>
          </div>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
           <s:iterator value="listAddress">
            <s:if test="def==1">
                <tr style="background-color: #999999">                        
              </s:if>
            <s:else>
            
             <tr> 
            </s:else>
            
              <td width="11%" height="30">
                <div align="center">
                  <input type="radio" name="addressid_choice" value="<s:property value='addressid'/>"/>
                  </div>
              </td>
          
              
              
              
              <td width="74%" height="30">
              <s:property value="address"/>(<s:property value="realname"/>)<s:property value="tel"/>
              <s:if test="def==1">
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 默认地址
              </s:if>
              
              </td>
              <td width="15%" height="30">&nbsp; <p align="center">
              <a href="shoping/getUpdateAddress?cartid=<s:property value='listGoods[0].cartid'/>&addressid=<s:property value='addressid'/>">修&nbsp; 改</a> 
              | <a href="shoping/deleteAddress?cartid=<s:property value='listGoods[0].cartid'/>&addressid=<s:property value='addressid'/>">删&nbsp; 除</a></p>
             </td>
            </tr>
           </s:iterator> 
            <script type="text/javascript">
                      var rt = document.getElementsByName("addressid_choice");
                      var r="${addressid}";
                      var n=rt.length;
                      for(var i=0;i<n;i++){
                        if(rt[i].value==r){
                            rt[i].checked =  "checked"; 
                            break;  
                        }
                           
                      }
                     </script>    
           
            <tr>
              <td height="30" colspan="3">&nbsp;&nbsp; &nbsp;<a href="user/addAddress.jsp?cartid=<s:property value='listGoods[0].cartid'/>">使用新地址</a></td>
            </tr>
          
          </table>
		
		</s:else>
<!-- *************************************************************************************** -->		
          <br />
          <p>&nbsp;</p>
          <p>&nbsp; 确认订单信息</p>
          <p>&nbsp;&nbsp; </p>
	<!-- 使用隐藏域传递购物车信息 -->	
	    <input type="hidden" name="addressid" value="<s:property value='addressid'/>">
	    <input type="hidden" name="cartid" value="<s:property value='listGoods[0].cartid'/>">
	 	
	 	 
          <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
            <tr>
              <td width="197" height="52" bgcolor="#FFE1F0"><div align="center">
              商品名称</div></td>
              <td width="197" bgcolor="#FFE1F0"><div align="center">商品单价</div></td>
              <td width="197" bgcolor="#FFE1F0"><div align="center">图&nbsp; 片</div></td>
              <td width="197" bgcolor="#FFE1F0"><div align="center">数&nbsp; 量</div></td>
              <td width="197" bgcolor="#FFE1F0"><div align="center">小&nbsp; 计</div></td>
            </tr>
           <s:iterator value="listGoods" status="c">
                <tr > 
                <td bgcolor="#FFE1F0" align="center" >
                <s:property value="gname"/>
               </td>
                 <td bgcolor="#FFE1F0" align="center">
                <s:property value="gnprice"/>
                </td>
                   <td bgcolor="#FFE1F0" align="center"><img alt="" width="80" 
              src="upload/<s:property value='gpic'/>"></td>
               <td bgcolor="#FFE1F0" align="center">  <s:property value="gnum"/>		  </td>
              <td bgcolor="#FFE1F0"><label></label>
              <div align="center">
               ¥ <s:property value="gnum*gnprice"/>
              </div></td>
              </tr> 
           </s:iterator>   
            <tr>
              <td height="42" colspan="5" bgcolor="#FFE1F0"><div align="right"><span class="STYLE1">含运费) ：¥ 5.00</span>
                 </td>
            </tr>
          
            <tr>
              <td height="42" colspan="5" bgcolor="#FFE1F0"><div align="right"><span class="STYLE1">合计(含运费) ：¥</span>
                  <span class="STYLE3">
        <input type="text" class="input2" name="amount" value="<s:property value='amount+5'/>">          
                  
                  
                  &nbsp;&nbsp;&nbsp;</span>&nbsp; </div></td>
            </tr>
          </table>
           <label></label>
		  <div align="right">
		    <p>&nbsp;	        </p>
		    <p>&nbsp;</p>
		    
		    <p>
		      <input name="Submit2" type="submit" class="buttom" value="提交订单" />
	        </p>
		  </div>
          </form>
	   </td>
     </tr>
   </table>
    <!--**********************************************************************************************************************-->

  </div>
</body>
</html>