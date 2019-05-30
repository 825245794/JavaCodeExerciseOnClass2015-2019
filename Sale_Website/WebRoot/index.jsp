<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        
	<!--Link CSS Start-->		
	<jsp:include page="quote_css.jsp" flush="false"></jsp:include>
    <!--End of Link CSS -->		  

    </head>
    <body>
       <!--Header Start Area-->
	   <jsp:include page="header.jsp" flush="true"></jsp:include>
       <!--End of Header Area-->
        
        <!--Slider Area Start-->
        <div class="slider-area-home-one">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="preview-2">
                            <div id="nivoslider" class="slides">	
                                <a href="#"><img src="${pageContext.request.contextPath}/resource/img/slider/slider-1.jpg" alt="" title="#slider-1-caption1"/></a>
                                <a href="#"><img src="${pageContext.request.contextPath}/resource/img/slider/slider-2.jpg" alt="" title="#slider-1-caption2"/></a>
                            </div> 
                            <div id="slider-1-caption1" class="nivo-html-caption nivo-caption">
                                <div class="timeloading"></div>
                                <div class="banner-content slider-2  hidden-xs">
                                    <div class="text-content">
                                        <h1 class="title1"><span></span></h1>
                                        <h2 class="sub-title"><span></span></h2>
                                        <div class="slider-readmore">
                                            <a href="productdetails.action?productid=16" title="shopping now">立刻购买</a>	
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="slider-1-caption1" class="nivo-html-caption nivo-caption">
                                <div class="timeloading"></div>
                                <div class="banner-content slider-1  hidden-xs">
                                    <div class="text-content">
                                        <h1 class="title1"><span></span></h1>
                                        <h2 class="sub-title"><span>&nbsp;</span></h2>
                                        <div class="slider-readmore">
                                            <a href="productdetails.action?productid=17" title="shopping now">立刻购买</a>	
                                        </div>
                                    </div>
                                </div>
                            </div>    
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Slider Area-->
        
        <!--Service Area Start-->
        <div class="service-area-home-one">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-service">
                            <div class="service-single-item">
                                <div class="service-icon icon-one"><span>支持</span></div>
                                <div class="service-text">
                                    <h2><span class="color">7*24小时</span> <span class="dark">支持</span></h2>
                                    <div class="service-border-line">
                                        <p>正品行货 精致服务</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-service">
                            <div class="service-single-item">
                                <div class="service-icon icon-two"><span>支持</span></div>
                                <div class="service-text">
                                    <h2><span class="color">特别的</span> <span class="dark">礼品</span></h2>
                                    <div class="service-border-line">
                                        <p>提供礼品包装服务</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 hidden-sm">
                        <div class="single-service">
                            <div class="service-single-item">
                                <div class="service-icon icon-three"><span>支持</span></div>
                                <div class="service-text">
                                    <h2><span class="color">免费</span> <span class="dark">送货</span></h2>
                                    <div class="service-border-line">
                                        <p>市区2小时免费送货上门</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Service Area-->
        
        <!--Product Tab Carousel Start-->
    	<jsp:include page="/servlet/ProductTab" flush="true"></jsp:include>
        <!--End of Product Tab Carousel-->
        
        <!--Banner Area Start-->
        <div class="banner-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="banner-image box-hover">
                            <a href="productdetails.action?productid=17"><img src="${pageContext.request.contextPath}/resource/img/banner/1.jpg" alt="" class="img-responsive"></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="banner-image box-hover">
                            <a href="productdetails.action?productid=17"><img src="${pageContext.request.contextPath}/resource/img/banner/2.jpg" alt="" class="img-responsive"></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="banner-image box-hover">
                            <a href="#"><img src="${pageContext.request.contextPath}/resource/img/banner/3.jpg" alt="" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Banner Area-->
        
        <!--Product Guess Area Start-->
   		<jsp:include page="/servlet/ProductGuessServlet" flush="true"></jsp:include>
   		
        <!--End of Product Guess Area-->
        
        <!--Fullwidth Banner Start-->
        <div class="fullwidth-banner-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="fullwidth-banner">
                            <a href="productdetails.action?productid=12"> 
                                <img alt="" src="${pageContext.request.contextPath}/resource/img/banner/4.jpg" class="img1 img-responsive"> 
                                <img alt="" src="${pageContext.request.contextPath}/resource/img/banner/5.jpg" class="img2 img-responsive"> 
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Fullwidth Banner-->
        
        
        <!--Footer Start-->
        <jsp:include page="footer.jsp" flush="true"></jsp:include>
        <!--End of Footer-->
        
   		<!-- JS Start -->
   		<jsp:include page="quote_js.jsp" flush="true"></jsp:include>
   		<!-- End of JS -->
    </body>
</html>


