<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="cc.test.vo.*" %>
<!-- 
   程序运行的首页是Example_4/index.do
   本jsp中有两处需要完成，请注意，分别在13行和20行
 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <body>
    <br>
    <img src="img/cart.jpg" height="60px" width="60px">
    <a href="cart.jsp">已采购     ${sumNum}   本书</a><br>
   
   <br>       
 <table border="1">
     <c:forEach  var="book"  items="${bookList}" >
		<tr> 
			<td><img src="${book.bookImg}"></td>
			<td><a href="shopping.view?id=${book.bookId}">采购此书</a></td>
	   </tr>
	  
	</c:forEach>
</body>
</html>
