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

  </head>
  	<!--Link CSS Start-->		
	
      <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style_account.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/reset_account.css" type="text/css"> 
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/font-awesome.min.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/owl.carousel.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/owl.theme.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/owl.transitions.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/jquery-ui.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/meanmenu.min.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/animate.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/lib/nivo-slider/css/nivo-slider.css" type="text/css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/lib/nivo-slider/css/preview.css" type="text/css" media="screen" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/normalize.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/main.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css" type="text/css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/responsive.css" type="text/css">
    <!--End of Link CSS -->	
    <!-- JS Start -->
   	          <script src="resource/js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="resource/js/vendor/jquery-1.11.3.min.js"></script>
        <script src="resource/js/bootstrap.min.js"></script>
		<script src="resource/lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
		<script src="resource/lib/nivo-slider/home.js" type="text/javascript"></script>
        <script src="resource/js/wow.min.js"></script>
        <script src="resource/js/jquery-price-slider.js"></script>
        <script src="resource/js/jquery.meanmenu.js"></script>
        <script src="resource/js/owl.carousel.min.js"></script>
        <script src="resource/js/jquery.scrollUp.min.js"></script>
        <script src="resource/js/jquery.sticky.js"></script>
        <script src="resource/js/jquery.elevateZoom-3.0.8.min.js"></script>
        <script src="resource/js/plugins.js"></script>		
        <script src="resource/js/main.js"></script>
        <script src="resource/js/main_account.js"></script>
        <script src="resource/js/AjaxRequest.js"></script>
    <!-- End of JS -->
  <body>
   
       <!--Header Start Area-->
	   

	
        <header data-genuitec-lp-enabled="false" data-genuitec-file-id="wc9-21" data-genuitec-path="WebRoot/header.jsp">
            <!--Header Top Start-->
            

           <div class="header-top" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc9-22" data-genuitec-path="WebRoot/header_top.jsp">
                <div class="container">
                    <div class="row">
                         <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                            <div class="header-top-info">
                                <div class="header-phone">
                                    <p><i class="fa fa-phone">&nbsp;</i>免费电话： <span>(800)123 456 789</span></p>
                                </div>
                                <div class="header-email">
                                    <p><i class="fa fa-envelope">&nbsp;</i>Email: <span>admin@shoppingmall.com</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
                            <div class="header-top-menu">
                            
                            <!-- Account Start -->
                               




  <ul class="header-links"> 
        <li class="dropdown">
      <s:if test="#session.user.userid!=null"> 
      
        <a class="cd-signup" title="My Account" href="#"><span>个人中心</span></a>
        <a class="cd-signup" title="My Account" href="shoping/showCart"><span>购物车</span></a>
        <a class="cd-signup" title="My Account" href="user/exit"><span>退出系统</span></a>
        </s:if>
        <s:else> 
        <a class="cd-signin" href="user/login.jsp"><span>登录</span></a>
        <a class="cd-signup" title="My Account" href="user/regist.jsp"><span>免费注册</span></a>
        </s:else>
        </li>
    </ul>
 
   
                                <div class="currency-language-menu">
                                    <!--  <div class="floatleft">
                                        <form action="#" method="post" id="currency">
                                            <div class="btn-group">
                                                <button data-toggle="dropdown" class="btn btn-link dropdown-toggle" aria-expanded="false">

                                                <span>Currency</span> <i class="fa fa-angle-down"></i></button>
                                                <ul class="dropdown-menu">
                                                    <li><button name="EUR" type="button">1</button></li>
                                                    <li><button name="GBP" type="button">2</button></li>
                                                    <li><button name="USD" type="button">3</button></li>
                                                </ul>
                                            </div>
                                        </form>
                                    </div>-->
                                    
                                    <div class="floatleft">
                                        <form action="#" method="post" id="language">
                                            <div class="btn-group">
                                                <button data-toggle="dropdown" class="btn btn-link dropdown-toggle" aria-expanded="false">

                                                <span>语言</span> <i class="fa fa-angle-down"></i></button>
                                                <ul class="dropdown-menu">
                                                     <li><a href="user/i18n?request_locale=zh_CN"><img title="Chinese" class="imgw16h11" alt="Chinese" src="resource/img/flags/ch.jpeg"> 中文</a></li>
                                                     <li><a href="user/i18n?request_locale=en_US"><img title="English" alt="English" src="resource/img/flags/en.png"> English</a></li>
                                                </ul>
                                             </div>
                                         </form>
                                    </div>
                                </div>
                             </div>
                         </div>
                     </div>
                </div>
               </div>


            <!--End of Header Top-->
            <!--Search Start  -->
            

      <div class="header" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc9-48" data-genuitec-path="WebRoot/search.jsp">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12">
                            <div id="logo">
                                <a href="index"><img class="img-responsive" alt="Rantasy" src="resource/img/logo/logo.jpg"></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="search-category" class="input-group">
                                <form class="search-box" action="#" method="post">
                                    <div class="search-categories">
                                        <div class="search-cat">
                                            <select class="category-items " name="category">
                                                <option>全部</option>
                                                <option>商品</option>
                                                <option>品牌</option>
                                            </select>
                                        </div>
                                    </div>
                                    <input type="search" class="form-control" placeholder="搜索 商品/品牌..." id="text-search" name="search">
                                    <button id="btn-search-category" type="submit">
                                        <i class="icon-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>


            <!--End of Search  -->
            
            <!--Menu Start-->
            

    <div class="mainmenu-area" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc9-24" data-genuitec-path="WebRoot/menu.jsp">
                    <div id="sticker"> 
                        <div class="container">
                            <div class="row">   
                                <div class="col-lg-12 col-md-12 hidden-sm">
                                    <div class="mainmenu">
                                        <nav>
                                            <ul id="nav">
                                                <li class="current"><a href="index"><i class="fa fa-home"></i></a>
                                                    <!--<ul class="sub-menu">
                                                        <li><a href="index" > class="mega-title" 主页</a></li>
                                                    </ul>-->
                                                </li>
                                                <li><a href="user/showGoods?guser=拍照手机"><s:text name="flower"></s:text></a></li>
                                                
                                                <li><a href="user/showGoods?guser=大屏手机"><s:text name="openF"></s:text></a></li>
                                                
                                                <li><a href="user/showGoods?guser=旗舰手机"><s:text name="giftF"></s:text></a></li>
                                                
                                                <li><a href="user/showGoods?guser=音乐手机"><s:text name="romanF"></s:text></a></li>
                                                
                                                <li><a href="user/showGoods?guser=指纹手机"><s:text name="cartoonF"></s:text></a></li>
                                                <li><a href="about.jsp">联系我们</a></li>
                                            </ul>
                                        </nav>
                                    </div>        
                                </div>
                            </div>
                        </div>
                    </div>      
                </div>
                 </div>
            </div>
            </div>

  
            <!--End of Menu-->
        </header> 


       <!--End of Header Area-->
        
        <!--Slider Area Start-->
        <div class="slider-area-home-one" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc9-23" data-genuitec-path="user/main.jsp">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="preview-2">
                            <div id="nivoslider" class="slides">	
                                <a href="#"><img src="resource/img/slider/slider-1.jpg" alt="" title="#slider-1-caption1"/></a>
                            </div> 
                            <div id="slider-1-caption1" class="nivo-html-caption nivo-caption">
                                <div class="timeloading"></div>
                                <div class="banner-content slider-2  hidden-xs">
                                    <div class="text-content">
                                        <h1 class="title1"><span></span></h1>
                                        <h2 class="sub-title"><span></span></h2>
                                        <div class="slider-readmore">
                                            <a href="shoping/getGoodsDetail?gid=16" title="shopping now">查看详情</a>	
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
    	<div class="product-tab-carousel-area">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="products-tab">
<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
 <li role="presentation" class="active"><a href="#random" aria-controls="random" role="tab" data-toggle="tab">今日热门</a></li>
<li role="presentation"><a href="#latest-products" aria-controls="latest-products" role="tab" data-toggle="tab">最新上架</a></li>
<li role="presentation"><a href="#sale-products" aria-controls="sale-products" role="tab" data-toggle="tab">热销产品</a></li>
</ul>
</div>
</div>
<div class="clearfix"></div>
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="random">
<div class="product-tab-carousel">
<s:subset source="listhot" start="0" count="6">
<s:iterator>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=1">
<img src="upload/<s:property value='gpic'/>" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=<s:property value='gid'/>"><s:property value="gname"/></a></div>
<div class="p-price">
<span class="price-old"><s:property value="goprice"/> </span> <span class="price-new"><s:property value="gnprice"/></span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="shoping/getGoodsDetail?gid=<s:property value='gid'/>"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
</s:iterator>
</s:subset>

<div role="tabpanel" class="tab-pane" id="latest-products">
<div class="product-tab-carousel">
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=3">
<img src="resource/img/product/fashion/3.jpg" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">vivo X9s 全网通</a></div>
<div class="p-price">
<span class="price-old">¥2600</span> <span class="price-new">¥2498</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=3"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=5">
<img src="resource/img/product/fashion/5.jpg" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">AGM X2 全网通</a></div>
<div class="p-price">
<span class="price-old">¥4267</span> <span class="price-new">¥3999</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=5"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=7">
<img src="resource/img/product/fashion/7.jpg" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">OPPO A77 4GB</a></div>
<div class="p-price">
<span class="price-old">¥2400</span> <span class="price-new">¥2191</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=7"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=8">
<img src="resource/img/product/fashion/8.jpg" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">三星 S8 移动版</a></div>
<div class="p-price">
<span class="price-old">¥6200</span> <span class="price-new">¥5681</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=8"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=9">
<img src="resource/img/product/fashion/9.jpg" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">vivo X9sPlus 全网通</a></div>
<div class="p-price">
<span class="price-old">¥3300</span> <span class="price-new">¥2798</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=9"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=13">
<img src="resource/img/product/fashion/13.jpg" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">中兴 520 双4G</a></div>
<div class="p-price">
<span class="price-old">¥400</span> <span class="price-new">¥371</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=13"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=15">
<img src="resource/img/product/fashion/15.jpg" alt=""  style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">Moto Z 4GB</a></div>
<div class="p-price">
<span class="price-old">¥4200</span> <span class="price-new">¥3699</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=15"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div role="tabpanel" class="tab-pane" id="sale-products"> 
<div class="product-tab-carousel">
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=2">
<img src="resource/img/product/fashion/2.jpg" alt="" style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">乐视 S3 双卡双待</a></div>
<div class="p-price">
<span class="price-old">¥1200</span> <span class="price-new">¥899</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=2"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=3">
<img src="resource/img/product/fashion/3.jpg" alt="" style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">vivo X9s 全网通</a></div>
<div class="p-price">
<span class="price-old">¥2600</span> <span class="price-new">¥2498</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=3"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=4">
<img src="resource/img/product/fashion/4.jpg" alt="" style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">三星 S7 edge 全网通</a></div>
<div class="p-price">
<span class="price-old">¥3600</span> <span class="price-new">¥3399</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=4"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=5">
<img src="resource/img/product/fashion/5.jpg" alt="" style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">AGM X2 全网通</a></div>
<div class="p-price">
<span class="price-old">¥4267</span> <span class="price-new">¥3999</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=5"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=7">
<img src="resource/img/product/fashion/7.jpg" alt="" style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">OPPO A77 4GB</a></div>
<div class="p-price">
<span class="price-old">¥2400</span> <span class="price-new">¥2191</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=7"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=11">
<img src="resource/img/product/fashion/11.jpg" alt="" style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">小辣椒 4A 高配版</a></div>
<div class="p-price">
<span class="price-old">¥900</span> <span class="price-new">¥791</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=11"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=12">
<img src="resource/img/product/fashion/12.jpg" alt="" style="width:200px;height:180px;">
</a>
<!--  <div class="rating"><img alt="" src="resource/img/icon/star.png"></div>-->
</div>
<div class="product-text">
<div class="p-name"><a href="#">魅族 Note6 3GB</a></div>
<div class="p-price">
<span class="price-old">¥1500</span> <span class="price-new">¥1299</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=12"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

        <!--End of Product Tab Carousel-->
        
        <!--Banner Area Start-->
        <div class="banner-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="banner-image box-hover">
                            <a href="shoping/getGoodsDetail?gid=17"><img src="resource/img/banner/1.jpg" alt="" class="img-responsive"></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="banner-image box-hover">
                            <a href="shoping/getGoodsDetail?gid=17"><img src="resource/img/banner/2.jpg" alt="" class="img-responsive"></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="banner-image box-hover">
                            <a href="#"><img src="resource/img/banner/3.jpg" alt="" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Banner Area-->
        
        <!--Product Guess Area Start-->
   		<div class="new-product-carousel-area">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="section-title-one">
<h3 class="new-product">猜你喜欢</h3>
</div>
</div>
</div>
<div class="row">
<div class="new-product-carousel">
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=1">
<img src="resource/img/product/fashion/1.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=1">360手机 N5 全网通</a></div>
<div class="p-price">
<span class="price-old">¥2300</span>
<span class="price-new">¥1981</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=1"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=2">
<img src="resource/img/product/fashion/2.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=2">乐视 S3 双卡双待</a></div>
<div class="p-price">
<span class="price-old">¥1200</span>
<span class="price-new">¥899</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=2"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=4">
<img src="resource/img/product/fashion/4.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=4">三星 S7 edge 全网通</a></div>
<div class="p-price">
<span class="price-old">¥3600</span>
<span class="price-new">¥3399</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=4"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=5">
<img src="resource/img/product/fashion/5.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=5">AGM X2 全网通</a></div>
<div class="p-price">
<span class="price-old">¥4267</span>
<span class="price-new">¥3999</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=5"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=6">
<img src="resource/img/product/fashion/6.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=6">荣耀 畅玩6A 3GB</a></div>
<div class="p-price">
<span class="price-old">¥1200</span>
<span class="price-new">¥999</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=6"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=7">
<img src="resource/img/product/fashion/7.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=7">OPPO A77 4GB</a></div>
<div class="p-price">
<span class="price-old">¥2400</span>
<span class="price-new">¥2191</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=7"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=10">
<img src="resource/img/product/fashion/10.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=10">夏普 S2 全面屏</a></div>
<div class="p-price">
<span class="price-old">¥2800</span>
<span class="price-new">¥2499</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=10"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=12">
<img src="resource/img/product/fashion/12.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=12">魅族 Note6 3GB</a></div>
<div class="p-price">
<span class="price-old">¥1500</span>
<span class="price-new">¥1299</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=12"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="single-product">
<div class="product-image">
<a href="shoping/getGoodsDetail?gid=14">
<img src="resource/img/product/fashion/14.jpg" alt="\" style="width:200px;height:180px;">
</a>
<!-- <div class="rating"><img alt="" src="${pageContext.request.contextPath}/resource/img/icon/star.png"></div> -->
</div>
<div class="product-text">
<div class="p-name"><a href="shoping/getGoodsDetail?gid=14">努比亚 Z17 无边框</a></div>
<div class="p-price">
<span class="price-old">¥3300</span>
<span class="price-new">¥2799</span>
</div>
<div class="cart-links">
<div class="add-to-cart">
<a href="cart!addProduct?productid=14"><button type="button"><i class="fa fa-shopping-cart"></i>加入购物车</button></a>
</div>
<ul class="add-to-link">
<li><button type="button"><i class="fa fa-heart"></i></button></li>
<li><button type="button"><i class="fa fa-exchange"></i></button></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div></div></div>

   		
        <!--End of Product Guess Area-->
        
        <!--Fullwidth Banner Start-->
        <div class="fullwidth-banner-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="fullwidth-banner">
                            <a href="shoping/getGoodsDetail?gid=12"> 
                                <img alt="" src="resource/img/banner/4.jpg" class="img1 img-responsive"> 
                                <img alt="" src="resource/img/banner/5.jpg" class="img2 img-responsive"> 
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Fullwidth Banner-->
        
        
        <!--Footer Start-->
        
          <!--Newsletter Area Start-->
        <div class="newsletter-area" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc9-20" data-genuitec-path="WebRoot/footer.jsp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
                       
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-7 col-xs-12">
                        <div class="newsletter-container">
                            <div class="newletter-title"><h2>订阅最新消息</h2></div>
                            <div class="newsletter-form">
                                <form id="subscribe" action="#" name="subscribe" method="post">
                                    <input type="text" id="subscribe_email" name="subscribe_email" placeholder="你的电子邮件...">
                                    <button class="button border" type="submit"><span>提交</span></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
  			</div>
        </div>
        <!--End of Newsletter Area-->
            <!--Footer Widget Area Start-->
        <div class="footer-widget-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-5">
                        <div class="footer-title">
                            <h3>联系我们</h3>
                        </div>
                        <div class="footer-info">
                            <ul class="footer-contact">
                                <li><i class="fa fa-home"></i>服务中心覆盖全国42个省市，超过750000名售后客服</li>
                                <li><i class="fa fa-phone"></i><span>联系我们:</span>+123456789</li>
                                <li><i class="fa fa-envelope"></i><span>Email: </span> admin@shoppingmall.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 hidden-sm">
                        <div class="footer-title">
                            <h3>额外服务</h3>
                        </div>
                        <div class="footer-content">
                            <ul class="toggle-footer">
								<li> <a href ="#">礼品券</a></li>
								<li> <a href ="#">公司采购</a></li>
								<li> <a href ="#">特价产品</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4">
                        <div class="footer-title">
                            <h3>账户</h3>
                        </div>
                        <div class="footer-content">
                            <ul class="toggle-footer">
								<li> <a href ="#">我的账户</a> </li>
								<li> <a href ="#">历史</a> </li>
								<li> <a href ="#">愿望清单</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <div class="footer-title">
                            <h3>客户服务</h3>
                        </div>
                        <div class="footer-content">
                            <ul class="toggle-footer">
								<li> <a href =“#”>网站地图</a> </li>
								<li> <a href =“#”>公司</a> </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Footer Widget Area-->
        <!--Footer Start-->
        <footer class="footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-container">
                            <span>Copyright <a href="#">Mobile Phone Shoppingmall</a> All Rights Reserved</span>
                            <a href="#"><img src="resource/img/payment.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
 

        <!--End of Footer-->
        


  </body>
</html>
