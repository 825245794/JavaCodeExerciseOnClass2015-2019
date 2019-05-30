<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@ taglib prefix="s" uri="/struts-tags" %>
<body>
<div style ="padding: 3px; border: solid 1px #cccccc; text-align: center" >
<img src ="img/<s:property value ="imageFileName"/> "/>
<br />
<s:property value ="caption"/>
</div >
</body>
</html>