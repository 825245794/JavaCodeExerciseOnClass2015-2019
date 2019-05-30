<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自动售货机</title>

</head>
<body>
<jsp:useBean id="s" class="init.GetCitySpell"></jsp:useBean>

<%String city_spell="";
	 String mno="";
	try{
	city_spell=request.getAttribute("city").toString();
	mno=request.getParameter("mno").toString();
	s.setCity(city_spell);
	city_spell=s.getCity();
	}
	catch(Exception e){
	if(city_spell==null||"".equals(city_spell)){city_spell="zhuhai";}
	if(mno==null||"".equals(mno)){mno="100001";}
}
 %>
<jsp:forward page="databaseinit">
   <jsp:param value="<%=city_spell %>" name="city"/>
    <jsp:param value="<%=mno %>" name="mno"/>
</jsp:forward>


</body>
</html>