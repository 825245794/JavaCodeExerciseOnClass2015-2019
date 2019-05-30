<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>第五章第三题</title>
<%!String a=""; %>
<%
try{
	String id=request.getParameter("id");
	a="";
	int p=1;
	int o=0;
	int count=0;
	boolean flag=false;
	int j=Integer.parseInt(id);
	for(int i=j;i>0;i--){
		for(int k=0;k<j*2;k++){
			if(k==i){
				flag=true;
			}
			if(flag==true&&o<p){
				a+="*";
				o++;
			}
			else{
				a+="&nbsp";
			}
		}
		a+="<br>";
		flag=false;
		o=0;
		p=p+2;
	}
}catch(Exception e){a="";}	
%>
</head>
<body>
<form name="form" action="5_3Run.jsp" Method="post">
<input type="text" width="200" name="id" id="id">
<br>
<input type="submit" width="200" value="confirmr" name="button">

</form>
<%=a %>
<br>
<jsp:include page="copyright.jsp"></jsp:include>
</body>
</html>