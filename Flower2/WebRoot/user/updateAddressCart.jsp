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
    
    <title>My JSP 'addAddress.jsp' starting page</title>
    
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
	float: left;
	width: 500px;
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
#title {
	font-family: "楷体";
	font-size: 18px;
	background-color: #FFEEE3;
	letter-spacing: 0.3em;
	height: 30px;
	width: 980px;
	vertical-align: middle;
	padding-top: 10px;
	padding-left: 20px;
	clear: both;
}
.intputText {
	font-size: 16px;
	padding-top: 0px;
	padding-right: 5px;
	padding-bottom: 0px;
	padding-left: 0px;
	font-family: "楷体";
}
.input {
	height: 20px;
	width: 150px;
}
  

-->
</style>
</head>
 
  <jsp:include page="head.jsp"/> 

  <body bgcolor="#FDF3EE">
    <div align="center">
   <table width="1000" height="638" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
   
     <tr>
        <td valign="top">
          <div id="title">修改收货地址</div>
          <form id="form1" name="form1" method="post" action="shoping/updateAddressCart">
         
           <input type="hidden" name="cartid" value="${cartid}">
          <input type="hidden" name="addressid" value="${addressid}">
  <table width="50%" border="0" align="left" cellpadding="0" cellspacing="0">
    <tr>
      <td height="30"><div align="right" class="intputText">详细地址：</div></td>
      <td height="30"><label>
      
        <textarea name="dress.address" cols="20" rows="4"> <s:property value="listAddress[0].address"/></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="intputText">邮政编码：</div></td>
      <td height="30"><label>
        <input name="dress.post" type="text" class="input" id="post" value="<s:property value='listAddress[0].post'/>"/>
      </label></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="intputText">收货人姓名：</div></td>
      <td height="30"><label>
        <input name="dress.realname" type="text" class="input" id="realname"
         value="<s:property value='listAddress[0].realname'/>" />
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="intputText">手机号码：</div></td>
      <td height="30"><label>
        <input name="dress.tel" type="text" class="input" id="tel" 
        value="<s:property value='listAddress[0].tel'/>"/>
      </label></td>
    </tr>
    <tr>
      <td height="30" colspan="2"><label>
        </label>
        <div align="center">        
          <input type="radio" name="dress.def" value="1" id="dress"/>
          <span class="intputText"> 设为默认收货地址</span></div>
         <script type="text/javascript">
                      var r1 = document.getElementById("dress");
                      var r="${listAddress[0].def}".substring(0, 1);
                      if(r=="1")
                        r1.checked =  "checked";  
                     
        
                     </script> 
          
          </td>
      </tr>
    <tr>
      <td height="40" colspan="2"><label>
        <div align="center">
          <input type="submit" name="Submit" value="修  改" />
         &nbsp; </div>
      </label></td>
      </tr>
  </table>
   
  <label></label>
  <p>&nbsp;</p>
          </form>
		  <br />
	     </td>
     </tr>
   </table>
    <!--**********************************************************************************************************************-->

  </div>
</body>
</html>
