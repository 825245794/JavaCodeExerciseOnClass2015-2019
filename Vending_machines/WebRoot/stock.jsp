<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<script type="text/javascript">

 var numMin = 0;  
        var numMax = 100;  
        function add(numb){  
            var num = document.getElementById(numb).value;   
            if(num==numMax || num > numMax){  
                document.getElementById(numb).value = numMin;  
            }else{  
                document.getElementById(numb).value++;  
            }  
        }  
          
        function minus(numb){  
            var num = document.getElementById(numb).value;  
            if(num==numMin || num < numMin){  
                document.getElementById(numb).value = numMax;  
            }else{  
                document.getElementById(numb).value--;  
            }  
        }  
          
        function check(numb){  
            var num = document.getElementById(numb);  
            if (isNaN(num.value)){  
                alert("只能输入数字！");  
                num.value="";  
            }  
        }  

</script>
<style>.table-c table{border-right:1px solid #F00;border-bottom:1px solid #F00} 
.table-c table td{border-left:1px solid #F00;border-top:1px solid #F00} </style>
<%@page import=" java.util.ArrayList" %>
<%@page import=" java.util.List" %>
<%@page import=" Admin.save_stock" %>
<%@taglib prefix="s" uri="/struts-tags" %>
</head>
 <%List<save_stock> list=(List<save_stock>)request.getAttribute("list"); 
 	String mno=request.getAttribute("mno").toString();
 %>
<body>
<div class="table-c">
<form action="stockchange.action" method="post">
<table style="width:90%;height:60%;margin-left: 0px;">
<tr><td align="left"style="width:20%;text-align: center;">预览图</td><td align="left"style="text-align: center;">名称</td><td align="left"style="text-align: center;">库存</td></tr>
<%for(int i=0;i<list.size();i++){ %>
<tr>
<td align="center"><img style="width:22%;"align="middle" src="<%=list.get(i).getPath() %>"><input type="hidden" value="<%=list.get(i).getDno() %>" name="dno"><input type="hidden" value="<%=mno %>" name="mno"></td>
<td align="left" style="text-align: center;"><%=list.get(i).getDname() %></td>
<td align="center" ><input type="button" value="+"  onclick="add(<%=i%>)"><input type="text" id="<%=i %>" value="<%=list.get(i).getStock() %>" onkeyup="check(<%=i%>)" name="stock" style="width:5%;text-align: center;"><input type="button" value="-"  onclick="minus(<%=i%>)"></td>
</tr>
<%} %>
</table>
<p align="center"><input type="submit"   value="确认" align="middle" style="width: 30%;height: 35px; border: none;color: white; background-color: green;"></p>
</form> 
</div>

</body>
</html>