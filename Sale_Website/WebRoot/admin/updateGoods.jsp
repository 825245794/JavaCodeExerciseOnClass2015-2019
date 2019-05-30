<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateGoods.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	
	
	
 <link href="admin/css/mycss.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
 *{
padding: 0;
margin: 0;
}

.sp{
width: 100px;
height: 20px;
text-align: center;
 background-color: #CCCCFF;
 float: left;
}
    </style>
 
</head>
  
 <body bgcolor="#FDF3EE">
 
 
   <div align="center" id="conn">
        <div id="d1">
        <div align="left">${tip}</div>
		  <br>
		   <h1>修改商品</h1>
		   <form action="admin/updateGoods" method="post" enctype="multipart/form-data" name="form1" id="form1">
		     <p>&nbsp;</p>
		     <table width="500" height="376" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFCCCC" bgcolor="#FEF2CF">
               <tr>
                 <td width="162" height="30" class="inputtext"><div align="center">商品名称：</div></td>
                 <td width="232" height="30"><div align="left">
                   <input name="goods.gname" type="text" class="input1" value="<s:property value='listGoods[0].gname'/>"/>
                 </div></td>
               
               </tr>
               <tr>
                 <td height="30" class="inputtext"><div align="center">商品原价：</div></td>
                 <td height="30"><div align="left">
                   <input name="goods.goprice" type="text" class="input1" value="<s:property value='listGoods[0].goprice'/>"/>
                 </div></td>
               </tr>
               <tr>
                 <td height="30" class="inputtext"><div align="center">商品折价：</div></td>
                 <td height="30"><div align="left">
                   <input name="goods.gnprice" type="text" class="input1" value="<s:property value='listGoods[0].gnprice'/>"/>
                 </div></td>
               </tr>
               <tr>
                 <td height="30" class="inputtext"><div align="center">商品图片：</div></td>
                 <td height="80">
                        <img alt=""	src="upload/<s:property value='listGoods[0].gpic'></s:property>" width="50px">
                        <input type="hidden" name="goods.gpic" value="<s:property value='listGoods[0].gpic'/>">
                     <div align="left">
                      <input type="file" name="upload"  id="file2"/>
                   </div>
                
                 </td>
               </tr>
               <tr>
                 <td height="30" class="inputtext"><div align="center">商品库存：</div></td>
                 <td height="30"><div align="left">
                   <input name="goods.gstore" type="text" class="input1" value="<s:property value='listGoods[0].gstore'/>"/>
                 </div></td>
               </tr>
               <tr>
                 <td height="30" class="inputtext"><div align="center">商品品种：</div></td>
                 <td height="30">
                
                   <div align="left">
                     <select name="goods.typename" id="typename">
                       <s:iterator value="listType" var="t" status="s">
                          <option value="<s:property value='#t.typename'/>"><s:property value="#t.typename"/></option>
                       </s:iterator>
                     </select>
                     <script type="text/javascript">
                      document.getElementById("typename").value="${listGoods[0].typename}";
                     </script>
                   </div>
                </td>
               </tr>
               <tr>
                 <td height="30" class="inputtext"><div align="center">商品用途</div></td>
                 <td height="30"><div align="left">
                     <select name="goods.guser" id="guser">
                              <option value="鲜花" >鲜花</option>
								<option value="开业花篮">开业花篮</option>
								<option value="鲜花礼盒">鲜花礼盒</option>
								<option value="浪漫组合">浪漫组合</option>
								<option value="卡通花束">卡通花束</option>
                   </select>
                  <script type="text/javascript">
                      document.getElementById("guser").value="${listGoods[0].guser}";
                     </script>
                 </div></td>
               </tr>
              
               <tr>
                 <td height="30" class="inputtext"><div align="center">是否推荐：</div></td>
                 <td height="30">
                   <div align="left">
                     <input type="radio" name="goods.recomment" value="yes" id="recomment1" />
                     yes    
                     &nbsp;    
                     <input type="radio" name="goods.recomment" value="no" id="recomment2"/>
                     no                   </div>
                     <script type="text/javascript">
                      var r1 = document.getElementById("recomment1");
                      var r2 = document.getElementById("recomment2");
                      var r="${listGoods[0].recomment}".substring(0, 3);
                      if(r=="yes")
                        r1.checked =  "checked";  
                      else
                        r2.checked =  "checked";  
        
                     </script>
               </td>
               </tr>
               <tr>
                 <td height="99" class="inputtext"><div align="center">商品详情：</div></td>
                 <td height="99"><label>
                   <textarea name="goods.gdetaile" cols="30" rows="8">
                   <s:property value='listGoods[0].gdetaile'/></textarea>
                 </label></td>
               </tr>
             </table>
		     <p>&nbsp;</p>
		     <p>&nbsp;</p>
		       <input type="hidden" name="goods.gid" value="<s:property value='listGoods[0].gid'/>">
		       <input type="hidden" name="currpage" value="<s:property value='currpage'/>">
		     <label>
             <input name="Submit" type="submit" class="button" value="修改" />
                     &nbsp; 
             </label>
		             <label>
		             <input name="Submit2" type="reset" class="button" value="重置" />
		             </label>
	      </form>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
		   <p>&nbsp;</p>
        </div>
    </div>  
  </body>
 </html>

	
