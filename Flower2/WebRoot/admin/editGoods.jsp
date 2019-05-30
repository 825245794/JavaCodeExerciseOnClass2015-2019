<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'manageGoods.jsp' starting page</title>

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
* {
	padding: 0;
	margin: 0;
}

.input2 {
	height: 25px;
	width: 100px;
}


</style>

</head>
<body bgcolor="#FDF3EE">
	<div align="center" style="width: 100%;height: 100%">
		<div id="d1">
			<h1>&nbsp;</h1>
			<h1>商品管理</h1>
			<p>&nbsp;</p>

			<form id="form1" name="form1" method="post"
				action="admin/selectGoods" target="mainFrame">
				<span class="inputtext">商品名称：</span> <input name="goods.gname"
					type="text" class="input2" id="input2" /> &nbsp;<span
					class="inputtext">品种：</span> 
					<select name="goods.typename">
					 <option value="default">请选择</option>
					<s:iterator value="listType" var="t">
						<option value="<s:property value='#t.typename'/>"><s:property
								value="#t.typename" /></option>
					</s:iterator>
				</select> <span class="inputtext">用途</span> 
				<select name="goods.guser"	>
				     <option value="default">请选择</option>
				     <option value="鲜花" >鲜花</option>
					<option value="开业花篮">开业花篮</option>
					<option value="鲜花礼盒">鲜花礼盒</option>
					<option value="浪漫组合">浪漫组合</option>
					<option value="卡通花束">卡通花束</option>     
	
				</select> <label>&nbsp; <input name="Submit" type="submit"
					class="button" value="查询" />
				</label>
			</form>
			<p>&nbsp;</p>
			<table width="100%" border="1" cellspacing="0" cellpadding="0"
				align="center">
				<tr>
					<td height="27" class="title">编号</td>
					<td class="title">名称</td>
					<td class="title">原价</td>
					<td class="title">打折价</td>
					<td class="title">图片</td>
					<td class="title">库存</td>
					<td class="title">销量</td>
					<td class="title">品种</td>
					<td class="title">用途</td>
					<td class="title">推荐</td>
					<td class="title">操作</td>
				</tr>
				<s:iterator value="listGoods" var="g">
					<tr>
						<td><s:property value="#g.gid" /></td>
						<td><s:property value="#g.gname" /></td>
						<td><s:property value="#g.goprice" /></td>
						<td><s:property value="#g.gnprice" /></td>
						<td><img alt=""
							src="upload/<s:property value='#g.gpic'></s:property>"
							width="50px"></td>
						<td><s:property value="#g.gstore" /></td>
						<td><s:property value="#g.gsales" /></td>
						<td><s:property value="#g.typename" /></td>
						<td><s:property value="#g.guser" /></td>
						<td><s:property value="#g.recomment" /></td>
						<td><a href="admin/getUpdateGoods?currpage=${currpage}&goods.gid=<s:property value='#g.gid'/>">修改</a> ||<a href="#">删除</a></td>
					</tr>

				</s:iterator>
			</table>
			<br> <br>
			<s:if test="currpage>1">
				<a href="admin/getAllGoods?currpage=${currpage-1}"
					target="mainFrame">上一页</a>
			</s:if>
			&nbsp;
			<s:if test="currpage<countpage">
				<a href="admin/getAllGoods?currpage=${currpage+1}"
					target="mainFrame">下一页</a>
			</s:if>
		</div>
	</div>
</body>
</html>
