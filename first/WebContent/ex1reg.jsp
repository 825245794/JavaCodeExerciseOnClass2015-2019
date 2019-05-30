<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Paper" class="first.Paper"></jsp:useBean>
<jsp:useBean id="convert" class="first.Convert"></jsp:useBean>
<jsp:setProperty property="*" name="Paper"/>
<%=convert.arr2Str(Paper.getLanguages()) %>
</body>
</html>