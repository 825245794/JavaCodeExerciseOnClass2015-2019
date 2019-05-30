<%@page import="com.chat.pojo.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
List<Send> list = (List<Send>)request.getAttribute("list");
User user = (User)session.getAttribute("user");
if(user == null) response.sendRedirect("index.jsp");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    <meta http-equiv="refresh" content="1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="send" method="post">
    接受人:<input type="text" name="recevier"><br>
    内容:<input type="text" name="content"><br>
    <input type="submit" value="提交">
    </form>
    <table border="1">
    <tr>
<th>收件人</th>
<th>发件人</th>
<th>时间</th>
<th>内容</th>
    </tr>
    <%for(int i = 0;i<list.size();i++){ %>
    <tr>
    <td><%=list.get(i).getRecevier() %></td>
    
    <td><%=list.get(i).getSender() %></td>
    
    <td><%=list.get(i).getDt() %></td>
    
    <td><%=list.get(i).getContent() %></td>
    </tr>
    <%} %>
    </table>
  </body>
  <script type="text/javascript">
  /**
   * 
   */
   function Ajaxget(username,password,identify){
	    var loader=new net.AjaxRequest("login!loginAccount?nocache="+new Date().getTime()+"&username="+username+"&password="+password+"&identify="+identify, getUserinfo, onError,  "POST");
	}
	function getUserinfo(){ 
	    var info=this.req.responseText;
	    if(info!="success"){
	        document.getElementById('errorMessages').innerHTML=info; 
	    }
	    else{
	        document.getElementById('loginForm').submit();
	    }
	} 

	function onError(){
	    alert("网络连接失败");
	}
  var net =new Object();
  net.AjaxRequest = function(url, onload, onerror, method, params){
      this.req= null;
      this.onload= onload;
      this.onerror= (onerror)? onerror: this.defaultError;
      this.loadDate(url, method, params);
  }

  //init XMLHttpRequest Object,Return ResponseText

  net.AjaxRequest.prototype.loadDate = function(url, method, params) {
      if(!method){
          method= "GET";
      }
      if(window.XMLHttpRequest){
          this.req = new XMLHttpRequest();
      }else if(window.ActiveXObject){
          this.req = new ActiveXObject("Microsoft.XMLHTTP");
      }
      if(this.req){
          try{
              var loader = this;
              this.req.onreadystatechange = function(){
                  net.AjaxRequest.onReadyState.call(loader);
              }
              this.req.open(method, url, false);
              if(method == "POST"){
                  this.req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded charset=utf-8");
              }
              this.req.send(params);
          }catch(err){
              this.onerror.call(this);
          }
      }
  }

  //Status
  net.AjaxRequest.onReadyState = function(){
      var req = this.req;
      var ready = req.readyState;
      if(ready == 4){
          if(req.status == 200){
              this.onload.call(this);
          }else{
              this.onerror.call(this);
          }
      }
  } 

  //ERROR
  net.AjaxRequest.prototype.defaultError = function(){
      alert("ERROR Data\n\nRUN Status："+this.req.readyState+"\n Status："+this.req.status);
  }


  </script>
</html>
