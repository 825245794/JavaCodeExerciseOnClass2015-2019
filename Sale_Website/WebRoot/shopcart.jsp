<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.mall.entity.ProductEntity" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
        
	<!--Link CSS Start-->		
	<jsp:include page="quote_css.jsp" flush="false"></jsp:include>
    <!--End of Link CSS -->		  

  </head>
  <%
    List<ProductEntity> list=(List<ProductEntity>)request.getAttribute("list");
    int total=Integer.parseInt(request.getAttribute("total").toString());
    String quantity[]=(String[])request.getAttribute("quantity");
    
   %>
  <body>
       <!--Header Start Area-->
	   <jsp:include page="header.jsp" flush="true"></jsp:include>
       <!--End of Header Area-->
       <!-- cart main area start -->
        <div class="cart-main-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>购物车 (<%=list.size() %> 件物品)</h1>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <form action="#" method="post">				
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <td class="product-thumbnail">图片</td>
                                            <td class="product-name">名称</td>
                                            <td class="product-quantity">数量</td>
                                            <td class="product-price">单价</td>
                                            <td class="product-subtotal">总价</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(int i=0;i<list.size();i++){ %>
                                        <tr>
                                            <td class="product-thumbnail"><a href="product-details.html"><img src="${pageContext.request.contextPath}/resource/img/product/fashion/<%=list.get(i).getImg() %>" alt="" style="width:130px;height:140px;"/></a></td>
                                            <td class="product-name"><a href="product-details.html"><%=list.get(i).getProductname() %></a></td>
                                            <td class="product-quantity">
                                                <div class="input-group btn-block"> 
                                                    <input type="text" class="form-control" size="1" value="<%=quantity[i] %>" name="quantity" id="quantity<%=i%>">
                                                   
                                                    <span class="input-btn">
                                                        <button class="btn-primary" title="" data-toggle="tooltip" type="button" data-original-title="Update"><i class="fa fa-refresh" onclick="forward('<%=list.get(i).getProductid()%>',$('#quantity<%=i%>').val())"></i> </button>
                                                        
                                                        <button class="btn-danger" title="" data-toggle="tooltip" type="button" data-original-title="Remove"><i class="fa fa-times-circle" onclick="delforward('<%=list.get(i).getProductid()%>')"></i></button>
                                                 
                                                    </span>
                                                </div>    
                                            </td>    
                                            
                                            <td class="product-price"><span class="amount">¥<%=list.get(i).getNewprice() %></span></td>
                                           <td class="product-subtotal">¥<%= (Integer.parseInt(list.get(i).getNewprice())*Integer.parseInt(quantity[i])) %></td>
                                        </tr>
                   <%} %> 
                                    </tbody>
                                </table>
                            </div>
                        </form>	
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h2>下一步输入优惠码?</h2>
                        <p>如果你拥有优惠码可在此输入</p>
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#checkout">使用优惠码 <i class="fa fa-caret-down"></i></a>
                                    </h4>
                                </div>
                                <div id="checkout" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <label class="col-sm-2 control-label">在这里输入你的优惠卷号码</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="input-coupon" placeholder="在这里输入你的优惠卷号码" value="" name="coupon">
                                            <span class="input-group-btn">
                                                <input type="button" class="btn btn-primary" id="button-coupon" value="应用">
                                            </span>
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
                </div>
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td class="text-right"><strong>优惠卷:</strong></td>
                                    <td class="text-right">¥0</td>
                                </tr>
                             
                                <tr>
                                    <td class="text-right"><strong>总价:</strong></td>
                                    <td class="text-right">¥<%=total %></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="buttons">
                            <div class="pull-left"><a class="btn btn-default" href="#">继续购物</a></div>
                            <div class="pull-right"><a class="btn btn-primary" href="#">结算</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--cart main area end -->	
        <!--Footer Start-->
        <jsp:include page="footer.jsp" flush="true"></jsp:include>
        <!--End of Footer-->
        
   		<!-- JS Start -->
   		<jsp:include page="quote_js.jsp" flush="true"></jsp:include>
   		<!-- End of JS -->
  </body>
</html>
