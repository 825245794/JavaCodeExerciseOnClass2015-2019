<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Test</title>
</head>
<body>
<%
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	
%>
<form name="form" action="" method="get">
	�û���:<input name="name" type="text" id="name" width="120" value="<%=password%>"><br>
	��&nbsp&nbsp��<input name="password" type="text" id="password" value="<%=name%>"><br>

<input type="submit" value="�ύ" name="tijiao" width="80"> &nbsp;&nbsp;<input type="submit" name="register" value="ע��">
</form>
</body>
</html>