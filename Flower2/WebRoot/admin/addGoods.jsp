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
    
    <title>My JSP 'addGoods.jsp' starting page</title>
    
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


    </style>
 
</head>
  
 <body bgcolor="#FDF3EE">
   <div align="center" id="conn">
        <div id="d1">
        <div align="left">${tip}</div>
		  <br>
		   <h1>添加商品</h1>
		  <form action="admin/addGoods" method="post" enctype="multipart/form-data" name="form1" id="form1">
		     <p>&nbsp;</p>
		     <table width="500" height="376" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFCCCC" bgcolor="#FEF2CF">
               <tr>
                 <td width="200" height="40" class="inputtext"><div align="center">商品名称：</div></td>
                 <td width="300" height="40"><div align="left">
                   <input name="goods.gname" type="text" class="input1" />
                 </div></td>
               </tr>
               <tr>
                 <td height="40" class="inputtext"><div align="center">商品原价：</div></td>
                 <td height="40"><div align="left">
                   <input name="goods.goprice" type="text" class="input1" />
                 </div></td>
               </tr>
               <tr>
                 <td height="40" class="inputtext"><div align="center">商品折价：</div></td>
                 <td height="40"><div align="left">
                   <input name="goods.gnprice" type="text" class="input1" />
                 </div></td>
               </tr>
               <tr>
                 <td height="40" class="inputtext"><div align="center">商品图片：</div></td>
                 <td height="40"><label>
                    <div align="left">
                      <input type="file" name="upload"  id="file2"/>
                       </div>
                 </label></td>
               </tr>
               <tr>
                 <td height="40" class="inputtext"><div align="center">商品库存：</div></td>
                 <td height="40"><div align="left">
                   <input name="goods.gstore" type="text" class="input1" value="50"/>
                 </div></td>
               </tr>
               <tr>
                 <td height="40" class="inputtext"><div align="center">商品品种：</div></td>
                 <td >
                   <div align="left">
                     <select name="goods.typename">
                       <s:iterator value="listType" var="t" status="s">
                          <option value="<s:property value='#t.typename'/>"><s:property value="#t.typename"/></option>
                        </s:iterator>
                     </select>
                     </div>
                 </td>
               </tr>
               <tr>
                 <td height="40" class="inputtext"><div align="center">商品用途</div></td>
                 <td ><div align="left">
                   <select name="goods.guser">
                               <option value="拍照手机" selected="selected">拍照手机</option>
								<option value="大屏手机">大屏手机</option>
								<option value="旗舰手机">旗舰手机</option>
								<option value="音乐手机">音乐手机</option>
								<option value="指纹手机">指纹手机</option>     
                   </select>
                 </div></td>
               </tr> 
     <!--           <tr>
                 <td height="30" class="inputtext"><div align="center">商品类型：</div></td>
                 <td height="30"><div align="left">
                   <select name="goods.gkinds">
           					 <option value="甜美爱情" selected="selected">甜美爱情</option>
								<option value="生日送花">生日送花</option>
								<option value="送福祝愿">送福祝愿</option>
								<option value="问候长辈">问候长辈</option>
								<option value="诚挚道歉">诚挚道歉</option>
								<option value="婚礼鲜花">婚礼鲜花</option>
								<option value="慰问探问">慰问探问</option>
                   </select>
                 </div></td>
               </tr>--> 
               <tr>
                 <td height="40" class="inputtext"><div align="center">是否推荐：</div></td>
                 <td >
                   &nbsp; 
                   <div align="left">
                     <input type="radio" name="goods.recomment" value="yes" />
                     yes    
                     &nbsp;    
                     <input type="radio" name="goods.recomment" value="no" checked="checked"/>
                     no                   </div>
                </td>
               </tr>
               <tr>
                 <td height="99" class="inputtext"><div align="center">商品详情：</div></td>
                 <td height="99"><label>
                   <textarea name="goods.gdetaile" cols="30" rows="8"></textarea>
                 </label></td>
               </tr>
             </table>
		     <p>&nbsp;</p>
		     <p>&nbsp;</p>
		     <label>
             <input name="Submit" type="submit" class="button" value="添 加" />
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

	

