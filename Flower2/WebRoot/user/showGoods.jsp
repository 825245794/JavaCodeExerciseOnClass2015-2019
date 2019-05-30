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
    
    <title>My JSP 'goodsKinds.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <style type="text/css">
<!--
.divp {
	float: left;
	height: 200px;
	width: 116px;
	font-size: 14px;
	text-align: center;
	border:  1px solid;
}
*{
padding:0;
margin:0;
  
}
 
.leftD {
	font-family: "华文楷体";
	font-size: 16px;
	color: #4F3760;
	letter-spacing: 0.2em;
	height: 120px;
	width: 100%;
	padding-top: 20px;
	padding-left:0px;
	line-height: 2em;
}
.title {
	font-family: "华文彩云";
	font-size: 20px;
	letter-spacing: 0.5em;
	text-indent: 20px;

}

a{
text-decoration:none;
}
.STYLE1 {color: #FFFFFF}

.dt{
font-size: 16px;
text-align: center;
 
}

ul{
   padding-left: 20px;
   list-style-type: none;
}
.gg{
text-indent: 1em;
line-height: 2em;

}
-->
</style>
</head>

  <s:include value="top.jsp"></s:include>
  
<body bgcolor="#FDF3EE">
<div align="center">
  
    <!--**********************************************************************************************************************-->

  <table width="1000" height="600" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
    <tr>
      <td width="120" valign="top">
	  <div class="leftD">
	     <p>鲜花分类	   </p>
	     <ul>
	       <li><a href="#">甜美爱情</a></li>
           <li><a href="#">生日送花</a></li>
        </ul>
	    
	  </div>
	   <div class="leftD">
	     <p>花材分类   </p>
	     <ul>
	       <li><a href="#">玫瑰花</a></li>
           <li><a href="#">康乃馨</a></li>
         </ul>
	    
	  </div>
    
	   <div class="leftD">
	     <p>价格分类   </p>
	     <ul>
	       <li><a href="#">100以下</a></li>
           <li><a href="#">100-200</a></li>
		   <li><a href="#">200-300</a></li>
          </ul>
	    
	  </div>
	  
	  </td>
      <td width="715" valign="top">
       <s:subset source="listGoods" start="0" count="30">
           <s:iterator>
             
            <div class="divp">  
               <a href="shoping/getGoodsDetail?gid=<s:property value='gid'/>">
                 <img alt="" src="upload/<s:property value='gpic'/>" width="110" border="0">
               <s:property value="gname"/><br/>
                                        市场价：<SPAN style="text-decoration: line-through"> <s:property value="goprice"/> </SPAN>
               <br/> 订购价：  <s:property value="gnprice"/> 
               </a>  
             
           </div>
           </s:iterator>
         </s:subset>
      
      </td>
      <td width="180" valign="top"><br/>
        <div class="title" >公告</div>
        <br/>
         <p></p>
         <div class="gg">本网点的鲜花物美价廉，是赠送爱人、亲人和情人的最佳选择！</div>    
</td>
    </tr>
  </table>
</div>
</body>
</html>
  <s:include value="bottom.jsp"></s:include>
