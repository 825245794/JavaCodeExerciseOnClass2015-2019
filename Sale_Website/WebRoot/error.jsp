<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>错误</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="resource/error/css/bootstrap.min.css">
	<link rel="stylesheet" href="resource/error/css/animate.css">
	<link rel="stylesheet" href="resource/error/css/style.css">
	<script src="resource/error/js/modernizr-2.6.2.min.js"></script>
	<%@ taglib uri ="/struts-tags" prefix ="s" %>
	</head>
	<body>
		<div class="container fh5co-container">
			<div class="row">
				<div class="col-md-12 animate-box" data-animate-effect="fadeIn">
					<div class="fh5co-404-wrap" id="video" data-vide-bg="resource/error/video/Crocodile" data-vide-options="position: 0 50%">
						<div class="overlay"></div>
					</div>
				</div>
				<div class="col-md-12 text-center fh5co-404-text animate-box"  data-animate-effect="fadeIn">
					<h2>出错了！！</h2>
					<h3><s:fielderror cssStyle="color:red;"></s:fielderror></h3>
					<p><a href="<%=path %>/index" class="btn btn-primary">返回主页</a></p>
				</div>
				<div class="col-md-12 text-center fh5co-copyright animate-box" data-animate-effect="fadeInUp">
					<p><small>&copy; All Rights Reserved. Mobile Phone ShoppingMall! </small></p>
				</div>
			</div>
		
		</div>
	
	<!-- jQuery -->
	<script src="resource/error/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="resource/error/js/bootstrap.min.js"></script>
	<!-- Vide -->
	<script src="resource/error/js/jquery.vide.min.js"></script>
	<!-- Waypoints -->
	<script src="resource/error/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="resource/error/js/main.js"></script>


	</body>
</html>


