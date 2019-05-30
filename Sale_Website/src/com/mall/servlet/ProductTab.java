package com.mall.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mall.biz.ProductManager;
import com.mall.entity.ProductEntity;
import com.mall.global.Constant;

public class ProductTab extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public ProductTab() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ProductEntity> list;
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<div class=\"product-tab-carousel-area\">");
	    out.println("<div class=\"container\">");
	    out.println("<div class=\"row\">");
	    out.println("<div class=\"col-lg-12 col-md-12 col-sm-12\">");
	    out.println("<div class=\"products-tab\">");
        out.println("<!-- Nav tabs -->");
        out.println("<ul class=\"nav nav-tabs\" role=\"tablist\">");
        out.println(" <li role=\"presentation\" class=\"active\"><a href=\"#random\" aria-controls=\"random\" role=\"tab\" data-toggle=\"tab\">今日热门</a></li>");
        out.println("<li role=\"presentation\"><a href=\"#latest-products\" aria-controls=\"latest-products\" role=\"tab\" data-toggle=\"tab\">最新上架</a></li>");
        out.println("<li role=\"presentation\"><a href=\"#sale-products\" aria-controls=\"sale-products\" role=\"tab\" data-toggle=\"tab\">热销产品</a></li>");
        out.println("</ul>");
        out.println("</div>");
        out.println("</div>");
        out.println("<div class=\"clearfix\"></div>");
        out.println("<div class=\"tab-content\">");
        out.println("<div role=\"tabpanel\" class=\"tab-pane active\" id=\"random\">");
        out.println("<div class=\"product-tab-carousel\">");
        list = new ProductManager().searchProduct(random());
       	for(int i=0;i<list.size();i++){ 
      	out.println("<div class=\"col-md-4\">");
        out.println("<div class=\"single-product\">");
        out.println("<div class=\"product-image\">");
        out.println("<a href=\"productdetails.action?productid="+list.get(i).getProductid()+"\">");
        out.println("<img src=\"resource/img/product/fashion/"+list.get(i).getImg()+"\" alt=\"\"  style=\"width:200px;height:180px;\">");
        out.println("</a>");
        out.println("<!--  <div class=\"rating\"><img alt=\"\" src=\"resource/img/icon/star.png\"></div>-->");
        out.println("</div>");
        out.println("<div class=\"product-text\">");
        out.println("<div class=\"p-name\"><a href=\"#\">"+list.get(i).getProducttitle()+"</a></div>");
        out.println("<div class=\"p-price\">");
        out.println("<span class=\"price-old\">¥"+list.get(i).getOldprice()+"</span> <span class=\"price-new\">¥"+list.get(i).getNewprice()+"</span>");
        out.println("</div>");
        out.println("<div class=\"cart-links\">");
        out.println("<div class=\"add-to-cart\">");
       	out.println("<a href=\"cart!addProduct?productid="+list.get(i).getProductid()+"\"><button type=\"button\"><i class=\"fa fa-shopping-cart\"></i>加入购物车</button></a>");
       	out.println("</div>");
        out.println("<ul class=\"add-to-link\">");
        out.println("<li><button type=\"button\"><i class=\"fa fa-heart\"></i></button></li>");
        out.println("<li><button type=\"button\"><i class=\"fa fa-exchange\"></i></button></li>");
        out.println("</ul>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
       	}
        out.println("</div>");
        out.println("</div>");
        out.println("<div role=\"tabpanel\" class=\"tab-pane\" id=\"latest-products\">");
        out.println("<div class=\"product-tab-carousel\">");
        list = new ProductManager().searchProduct(random());
       	for(int i=0;i<list.size();i++){ 
        out.println("<div class=\"col-md-4\">");
        out.println("<div class=\"single-product\">");
        out.println("<div class=\"product-image\">");
        out.println("<a href=\"productdetails.action?productid="+list.get(i).getProductid()+"\">");
        out.println("<img src=\"resource/img/product/fashion/"+list.get(i).getImg()+"\" alt=\"\"  style=\"width:200px;height:180px;\">");
        out.println("</a>");
        out.println("<!--  <div class=\"rating\"><img alt=\"\" src=\"resource/img/icon/star.png\"></div>-->");
        out.println("</div>");
        out.println("<div class=\"product-text\">");
        out.println("<div class=\"p-name\"><a href=\"#\">"+list.get(i).getProducttitle()+"</a></div>");
        out.println("<div class=\"p-price\">");
        out.println("<span class=\"price-old\">¥"+list.get(i).getOldprice()+"</span> <span class=\"price-new\">¥"+list.get(i).getNewprice()+"</span>");
        out.println("</div>");
        out.println("<div class=\"cart-links\">");
        out.println("<div class=\"add-to-cart\">");
        out.println("<a href=\"cart!addProduct?productid="+list.get(i).getProductid()+"\"><button type=\"button\"><i class=\"fa fa-shopping-cart\"></i>加入购物车</button></a>");
        out.println("</div>");
        out.println("<ul class=\"add-to-link\">");
        out.println("<li><button type=\"button\"><i class=\"fa fa-heart\"></i></button></li>");
        out.println("<li><button type=\"button\"><i class=\"fa fa-exchange\"></i></button></li>");
        out.println("</ul>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
       	}
        out.println("</div>");
        out.println("</div>");
        out.println("<div role=\"tabpanel\" class=\"tab-pane\" id=\"sale-products\"> ");
        out.println("<div class=\"product-tab-carousel\">");
        list = new ProductManager().searchProduct(random());
       	for(int i=0;i<list.size();i++){ 
        out.println("<div class=\"col-md-4\">");
        out.println("<div class=\"single-product\">");
        out.println("<div class=\"product-image\">");
        out.println("<a href=\"productdetails.action?productid="+list.get(i).getProductid()+"\">");
        out.println("<img src=\"resource/img/product/fashion/"+list.get(i).getImg()+"\" alt=\"\" style=\"width:200px;height:180px;\">");
        out.println("</a>");
        out.println("<!--  <div class=\"rating\"><img alt=\"\" src=\"resource/img/icon/star.png\"></div>-->");
        out.println("</div>");
        out.println("<div class=\"product-text\">");
        out.println("<div class=\"p-name\"><a href=\"#\">"+list.get(i).getProducttitle()+"</a></div>");
      	out.println("<div class=\"p-price\">");
        out.println("<span class=\"price-old\">¥"+list.get(i).getOldprice()+"</span> <span class=\"price-new\">¥"+list.get(i).getNewprice()+"</span>");
        out.println("</div>");
        out.println("<div class=\"cart-links\">");
        out.println("<div class=\"add-to-cart\">");
        out.println("<a href=\"cart!addProduct?productid="+list.get(i).getProductid()+"\"><button type=\"button\"><i class=\"fa fa-shopping-cart\"></i>加入购物车</button></a>");
        out.println("</div>");
        out.println("<ul class=\"add-to-link\">");
        out.println("<li><button type=\"button\"><i class=\"fa fa-heart\"></i></button></li>");
        out.println("<li><button type=\"button\"><i class=\"fa fa-exchange\"></i></button></li>");
        out.println("</ul>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
       	}
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");   
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
		out.flush();
	}
        public String random(){
        	String a="";
        	for(int i=0;i<=10;i++){
        		a+="'"+String.valueOf(((int)(Math.random()*Constant.PRODUCT_MAX_SIZE))+1)+"'"+",";
        	}
        	a=a.substring(0, a.lastIndexOf(","));
        	return a;
        }
	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
