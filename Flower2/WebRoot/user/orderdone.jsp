<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="head.jsp"></jsp:include>

<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">

		<title>商品详情</title>

		<link href="beforeUser/css/daohang.css" rel="stylesheet" type="text/css" />
		<link href="beforeUser/css/common.css" rel="stylesheet" type="text/css" />
		<link href="beforeUser/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			//确定按钮
			function gogo(){
				//alert("aaa");
				//window.location.href="paydone.jsp";
				document.forms[0].submit();
			}
		</script>
  </head>
  
  <body>
  	
	<div class="blank"></div>
	<div class="nFlowBox">
    <h2 style="text-align:center; height:30px; line-height:30px;">感谢您在本站购物！您的订单已提交成功，请选择银行完成支付！！！！<br/><br/>
         	请记住您的订单号: <font style="color:red" size='5'>${orderid}</font></h2><br/>
      <center>
      <form action="beforeUser/paydone.jsp" method="post">
            	
            	<input type="hidden" name="transamt" value="20"/>
            	<input type="image" src="images/Chinapay_logo.jpg" onclick="gogo()"/>
      </form>
      </center>
    </div>
    </div>
  </body>
</html>
