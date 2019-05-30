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
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <title>无标题文档</title>
<style type="text/css">
<!--
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
#i18N{
  text-align: center;
  width: 80%;
  height: 40px;
  padding-top: 10px;
  background-color: #F49BD0;
  margin-left: 10px;
  font-size: 18px;
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
      <td width="120" valign="top" >
       <br/>
       <p>请选择语言</p>
      <div id="i18n">  <a href="user/i18n?request_locale=zh_CN">中文</a>|<a href="user/i18n?request_locale=en_US">英文</a></div> 
        <hr/>
 	  <div class="leftD">
	     <p style="font-weight: 800;font-size: 16px;">手机分类	   </p>
	     <ul>
	       <li><a href="#">大屏手机</a></li>
           <li><a href="#">拍照手机</a></li>
        </ul>
	    
	  </div>
	   
	
    
	   <div class="leftD">
	     <p style="font-weight: 800;font-size: 16px;">价格分类   </p>
	     <ul>
	       <li><a href="#">1000以下</a></li>
           <li><a href="#">1000-2000</a></li>
		   <li><a href="#">2000-3000</a></li>
          </ul>
	    
	  </div>
	  
	  </td>
      <td width="715" valign="top"><table width="100%" height="716" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFE8E8">
        <tr>
          <td height="40" colspan="6" class="title">推荐热卖</td>
          </tr>
        <tr>
         <s:subset source="listhot" start="0" count="6">
           <s:iterator>
              <td width="116" height="130" class="dt"> 
                <a href="shoping/getGoodsDetail?gid=<s:property value='gid'/>">
                 <img alt="" src="upload/<s:property value='gpic'/>" width="116" border="0">
               <s:property value="gname"/><br/>
                                        市场价：<SPAN style="text-decoration: line-through"> <s:property value="goprice"/> </SPAN>
               <br/> 订购价：  <s:property value="gnprice"/> 
               </a>  
              </td>
           
           </s:iterator>
         </s:subset>
        </tr>
        <tr>
          <td height="37" colspan="6" class="title">拍照手机</td>
          </tr>
        <tr>
        <s:subset source="listxh" start="0" count="6">
           <s:iterator>
              <td width="116" height="130" class="dt"> 
                <a href="shoping/getGoodsDetail?gid=<s:property value='gid'/>">
                 <img alt="" src="upload/<s:property value='gpic'/>" width="116" border="0">
               <s:property value="gname"/><br/>
                                        市场价：<SPAN style="text-decoration: line-through"> <s:property value="goprice"/> </SPAN>
               <br/> 订购价：  <s:property value="gnprice"/> 
               </a>  
              </td>
           
           </s:iterator>
         </s:subset>
        </tr>
        <tr>
          <td colspan="6" class="title">大屏手机</td>
          </tr>
        <tr>
          <s:subset source="listky" start="0" count="6">
           <s:iterator>
              <td width="116" height="130" class="dt"> 
                <a href="shoping/getGoodsDetail?gid=<s:property value='gid'/>">
                 <img alt="" src="upload/<s:property value='gpic'/>" width="116" border="0">
               <s:property value="gname"/><br/>
                                        市场价：<SPAN style="text-decoration: line-through"> <s:property value="goprice"/> </SPAN>
               <br/> 订购价：  <s:property value="gnprice"/> 
               </a>  
              </td>
           
           </s:iterator>
         </s:subset>
        </tr>
       
      </table></td>
      <td width="180" valign="top" >
        <br/>
        <div class="title" >公告</div>
        <br/>
         <p></p>
         <div class="gg">本网点的手机物美价廉，是赠送爱人、亲人和情人的最佳选择！</div>    

     </td> 
    </tr>
  </table>
  </div>
  </body>
  </html>
  <s:include value="bottom.jsp"></s:include>