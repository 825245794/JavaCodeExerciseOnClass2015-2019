<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>6_2del</title>
</head>
<body>
<%
int k=Integer.parseInt(request.getParameter("ids"));
int max=Integer.parseInt(application.getAttribute("counter").toString());

for(int i=k;i<max;i++){
	if(i==max-1){
		application.removeAttribute("name"+String.valueOf(i));
		application.removeAttribute("msg"+String.valueOf(i));
		break;
	}else{
	application.setAttribute("name"+String.valueOf(i), application.getAttribute("name"+String.valueOf(i+1)).toString());
	application.setAttribute("msg"+String.valueOf(i), application.getAttribute("msg"+String.valueOf(i+1)).toString());
	}
}
application.setAttribute("counter", String.valueOf(max-1));
%>
<script type="text/javascript">window.location.href="6_2message_main.jsp"</script>
</body>
</html>