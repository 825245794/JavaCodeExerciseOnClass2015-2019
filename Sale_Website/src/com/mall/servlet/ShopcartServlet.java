package com.mall.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mall.bean.AccountStatus;
import com.mall.biz.ProductManager;
import com.mall.entity.CartEntity;
import com.mall.entity.ProductEntity;

public class ShopcartServlet extends HttpServlet {
	String q="";
	/**
		 * Constructor of the object.
		 */
	public ShopcartServlet() {
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

	}
	
	private int maxNum(int max){
		if(max<=5) return max;
		return 5;
	}
    private List<ProductEntity> collection(String email){
    	List<CartEntity> cartlist= new ProductManager().UserCart(email);
    	String a="";
    	q="";
    	for(int i=0;i<cartlist.size();i++){
    		a+="'"+cartlist.get(i).getProductid()+"',";
    		q+=cartlist.get(i).getQuantity()+";";
    	}
    	if(a.equals("")){
    		return null;
    	}
    	else{
    		a=a.substring(0, a.lastIndexOf(","));
    		List<ProductEntity> list= new ProductManager().searchProduct(a);
    		return list;
    	}
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

		doGet(request, response);
	}

	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub

	List<ProductEntity> list  = null;
	int max=0;
	int total=0;
	int prefer=0;
	String quantity[];
	HttpSession session=request.getSession();
	AccountStatus account = (AccountStatus)session.getAttribute("account");
	if(account!=null){
	list = collection(account.getEmail()); 
	}
	response.setIntHeader("refresh", 1);
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out = response.getWriter();
	if(list!=null){
    max=maxNum(list.size());
    quantity=q.split(";");
    for(int i=0;i<list.size();i++){
	quantity[i]=quantity[i].replaceAll("null", "");
	total+=Integer.parseInt(list.get(i).getNewprice())*Integer.parseInt(quantity[i]);
    prefer+=Integer.parseInt(list.get(i).getOldprice())*Integer.parseInt(quantity[i]);
    }
    prefer=prefer-total;
	out.println("<div class=\"col-lg-3 col-md-3 col-sm-6\">");
	out.println("<ul class=\"header-r-cart\">");
	out.println("<li><a class=\"cart\" href=\"cart.html\">"+list.size()+" 件物品 - ¥"+total+"</a>");
	out.println("<div class=\"mini-cart-content\">");
    out.println("<div class=\"cart-products-list\">");
    for(int i=0;i<max;i++){
    out.println("<div class=\"cart-products\">");
    out.println(" <div class=\"cart-image\">");
    out.println("<a href=\"#\"><img src=\"resource/img/product/fashion/"+list.get(i).getImg()+"\" alt=\"\"></a>");
    out.println("</div>");
    out.println("<div class=\"cart-product-info\">");
    out.println("<a href=\"#\" class=\"product-name\">"+list.get(i).getProductname()+"</a>");
    out.println("<span class=\"quantity\">X "+quantity[i]+" -</span>");
    out.println("<span class=\"p-price\">¥"+Integer.parseInt(list.get(i).getNewprice())*(Integer.parseInt(quantity[i]))+"</span>");
  	out.println("<a class=\"remove-product\" href=\"cart!deleteProduct?email="+account.getEmail()+"&productid="+list.get(i).getProductid()+"\"><i class=\"fa fa-times-circle\"></i></a>");
    out.println("</div>");
    out.println("</div>");
    } 
    out.println("</div>");
    out.println("<div class=\"cart-price-list\">");
    out.println("<p class=\"price-amount\">优惠 ; <span>¥"+prefer+"</span> </p>");
    out.println("<p class=\"price-amount\">总价 ; <span>¥"+total+"</span> </p>");
    out.println("<div class=\"cart-buttons\">");
    out.println("<a href=\"cart.action\"><i class=\"fa fa-shopping-cart\"></i> 查看更多</a>");
    out.println("<a href=\"checkout.html\"><i class=\"fa fa-sign-in\"></i> 结账</a>");
    out.println("</div>");
    out.println("</div>");
    out.println("</div>");
    out.println("</li>");
    out.println("</ul>");
    out.println("</div>");
    out.println("</div>");
    out.println("</div>");
	out.flush();
	}
}
}
