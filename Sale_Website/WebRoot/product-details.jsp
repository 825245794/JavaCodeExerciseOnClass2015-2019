<%@page import="com.mall.entity.ProductEntity"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <% List<ProductEntity> productlist = (List<ProductEntity>)request.getAttribute("productlist"); %>    
	<!--Link CSS Start-->		
	<jsp:include page="quote_css.jsp" flush="false"></jsp:include>
    <!--End of Link CSS -->	

  </head>
  
  <body>
       <!--Header Start Area-->
	   <jsp:include page="header.jsp" flush="true"></jsp:include>
       <!--End of Header Area-->
          <!--Product Details Area Start-->
        <div class="product-deails-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-9">
                        <div class="product-details-content row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="zoomWrapper">
                                    <div id="img-1" class="zoomWrapper single-zoom">
                                        <a href="#">
                                            <img id="zoom1" src="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" class="product-detail-img" data-zoom-image="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" alt="big-1">
                                        </a>
                                    </div>
                                    <div class="product-thumb row">
                                        <ul class="p-details-slider" id="gallery_01">
                                            <li class="col-md-4">
                                                <a class="fancybox elevatezoom-gallery" data-fancybox-group="group" href="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" data-image="img/product/fashion/<%= productlist.get(0).getImg() %>" data-zoom-image="img/product/fashion/<%= productlist.get(0).getImg() %>"><img src="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" alt=""></a>
                                            </li>
                                            <li class="col-md-4">
                                                <a class="fancybox elevatezoom-gallery" data-fancybox-group="group" href="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" data-image="img/product/fashion/<%= productlist.get(0).getImg() %>" data-zoom-image="img/product/fashion/<%= productlist.get(0).getImg() %>"><img src="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" alt=""></a>
                                            </li>
                                            <li class="col-md-4">
                                                <a href="#" class="elevatezoom-gallery" data-fancybox-group="group" data-image="img/product/fashion/<%= productlist.get(0).getImg() %>" data-zoom-image="img/product/fashion/<%= productlist.get(0).getImg() %>"><img src="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" alt=""></a>
                                            </li>
                                            <li class="col-md-4">
                                                <a href="#" class="elevatezoom-gallery" data-image="img/product/fashion/<%= productlist.get(0).getImg() %>" data-zoom-image="img/product/fashion/<%= productlist.get(0).getImg() %>"><img src="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" alt=""></a>
                                            </li>
                                            <li class="col-md-4">
                                                <a href="#" class="elevatezoom-gallery" data-image="img/product/fashion/<%= productlist.get(0).getImg() %>" data-zoom-image="img/product/fashion/<%= productlist.get(0).getImg() %>"><img src="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" alt=""></a>
                                            </li>
                                            <li class="col-md-4">
                                                <a href="#" class="elevatezoom-gallery" data-image="img/product/fashion/<%= productlist.get(0).getImg() %>" data-zoom-image="img/product/fashion/<%= productlist.get(0).getImg() %>"><img src="resource/img/product/fashion/<%= productlist.get(0).getImg() %>" alt=""></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="details-product-name"><h1><%= productlist.get(0).getProductname() %> </h1></div>
                                <ul class="details-product-list">
                                    <li>品牌: <a href="#"><%= productlist.get(0).getProductname().substring(0,productlist.get(0).getProductname().indexOf(" ")) %></a></li>
                                    <li>产品型号: <%= productlist.get(0).getProductname().substring(productlist.get(0).getProductname().indexOf(" ")+1) %></li>
                                    <li>库存状态: 充足</li>
                                </ul>
                                <div class="product-details-price">
                                    <span class="price-old">¥<%= productlist.get(0).getOldprice() %></span>	
                                    <span class="price-new">¥<%= productlist.get(0).getNewprice() %></span>	
                                </div>
                                <div class="form-group">
                                    <form action="cart!addProduct" method="post" id="from1">
                                        <input name="productid" value="<%= request.getParameter("productid") %>" style="display: hidden;"/>
                                        <label for="input-quantity" class="control-label">数量</label>
                                        <input type="text" class="form-control" id="input-quantity" size="2" value="1" name="quantity">
                                        <div class="cart-links">
                                            <div class="add-to-cart">
                                                <button type="button" onclick="document.getElementById('from1').submit()">加入购物车</button>
                                            </div>
                                            <ul class="add-to-link">
                                                <li><button type="button"><i class="fa fa-heart"></i></button></li>
                                            </ul>
                                        </div>
                                        <div class="product-rating">
                                            <div class="rating-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                                <i class="fa fa-star-o"></i>
                                                <i class="fa fa-star-o"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                            <a href="#">0 评论</a>
                                            <span>/</span>
                                            <a data-toggle="tab" role="tab" aria-controls="review" href="#review" aria-expanded="false">撰写评论</a>
                                        </div>
                                       
                                    </form>    
                                </div>
                            </div>
                        </div>
                    </div>
               
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <div class="product-details-tab">
                            <!-- Nav tabs -->
                            <ul role="tablist" class="nav nav-tabs">
                                <li class="active" role="presentation">
                                    <a data-toggle="tab" role="tab" aria-controls="description" href="#description" aria-expanded="true">产品详情</a>
                                </li>
                                <li role="presentation">
                                    <a data-toggle="tab" role="tab" aria-controls="specification" href="#specification" aria-expanded="false">产品参数</a>
                                </li>
                                <li role="presentation">
                                    <a data-toggle="tab" role="tab" aria-controls="review" href="#review" aria-expanded="false">评论(0)</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-9">
                        <div class="tab-content">
                            <div id="description" class="tab-pane active" role="tabpanel">
                                <div class="product-description">
                                    <p>
                                        <b>Intel Core 2 Duo processor</b></p>
                                    <p>
                                        Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.</p>
                                    <p>
                                        <b>1GB memory, larger hard drives</b></p>
                                    <p>
                                        The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.</p>
                                    <p>
                                        <b>Sleek, 1.08-inch-thin design</b></p>
                                    <p>
                                        MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.</p>
                                    <p>
                                        <b>Built-in iSight camera</b></p>
                                    <p>
                                        Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth</p>
                                </div>
                            </div>
                            <div id="specification" class="tab-pane" role="tabpanel">
                                <table class="table product-table">
                                    <tbody>
                                        <tr>
                                            <td colspan="2"><strong>内存</strong></td>
                                        </tr>
                                        <tr>
                                            <td>DDR4</td>
                                            <td>8GB</td>
                                          </tr>
                                        <tr>
                                            <td colspan="2"><strong>CPU</strong></td>
                                        </tr>
                                        <tr>
                                            <td>晓龙835</td>
                                            <td>4</td>
                                        </tr>
                                    </tbody>
                              </table>
                            </div>
                            <div id="review" class="tab-pane" role="tabpanel">  
                                <form action="#" method="post">
                                    <p>在这里写下你对产品的评论</p>
                                    <h2>评论</h2> 
                                    <div class="form-group required">
                                        <div class="form-name">
                                            <label for="input-name" class="control-label">用户名</label>
                                            <input type="text" class="form-control" id="input-name" value="" name="name">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <div class="form-review">
                                            <label for="input-review" class="control-label">评论</label>
                                            <textarea class="form-control" id="input-review" rows="5" name="text"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <div class="form-rating">
                                            <label class="control-label">评级</label>
                                            <span class="bad">差</span>
                                                <input type="radio" value="1" name="rating">
                                                <input type="radio" value="2" name="rating">
                                                <input type="radio" value="3" name="rating">
                                                <input type="radio" value="4" name="rating">
                                                <input type="radio" value="5" name="rating">
                                            <span class="good">好</span>
                                        </div>
                                    </div>
                                    <div class="buttons clearfix">
                                        <button class="btn-review" type="button">继续</button>
                                    </div>
                                </form>    
                            </div>                         
                        </div>        
                    </div>
                </div>
            </div>
        </div>
        <!--End of Product Details Area-->
        <!--Footer Start-->
        <jsp:include page="footer.jsp" flush="true"></jsp:include>
        <!--End of Footer-->
        
   		<!-- JS Start -->
   		<jsp:include page="quote_js.jsp" flush="true"></jsp:include>
   		<!-- End of JS -->
  </body>
</html>
