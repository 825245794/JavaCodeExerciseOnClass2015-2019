<%@ page language="java" pageEncoding="GB18030" contentType="text/html; charset=ISO-8859-1"%>
<jsp:useBean id="time" class="com.Test.Bean.Time" scope="page"></jsp:useBean>
<ul>
<%out.print(time.getTime()); %>
</ul> 