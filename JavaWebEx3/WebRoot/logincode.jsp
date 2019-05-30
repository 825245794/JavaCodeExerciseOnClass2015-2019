<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'logincode.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body onload="verifyCode()">
   验证码： <img id="verifyCode" src="">
  </body>
  <script>
	 var path;
	 var isverify=false;
	
	function verifyCode(){ 
		if(window.XMLHttpRequest){  
   	    var xmlhttprequest = new XMLHttpRequest();  
	}else{  
  	    if(window.ActiveXObject){  
        try{  
            var xmlhttprequest = new ActiveXObject('Msxml12.XMLHTTP');  
        }catch(e){  
            try{  
                xmlhttprequest = new ActiveXObject('Microsoft.XMLHTTP');  
            }catch(e){  
            }  
        }  
    }  
}  
  	  xmlhttprequest.open("GET","servlet/LoginCode",false);  

      xmlhttprequest.send(null);  
      path=xmlhttprequest.responseText; 
	  var img=document.getElementById("verifyCode");
	  img.src="code/"+path;
	  
	  var session=document.getElementById("session");
	  session.value=path;
		}
  </script>
</html>
