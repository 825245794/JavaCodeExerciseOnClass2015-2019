<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="s" uri="/struts-tags" %>
</head>
<body>
<p align="center">新增饮料表单</p>
<s:div align="center">
<s:form action="fileUpload" method="post" enctype="multipart/form-data" namespace="/">
<s:textfield name="name" label="饮料名称"></s:textfield>
<s:textfield name="buy" label="饮料进货价格"></s:textfield>
<s:textfield name="sell" label="饮料出售名称"></s:textfield>
<s:file name="myFile" label="上传预览图" ></s:file>
<s:submit value="提交" align="center"></s:submit>
</s:form>
</s:div>
</body>
</html>