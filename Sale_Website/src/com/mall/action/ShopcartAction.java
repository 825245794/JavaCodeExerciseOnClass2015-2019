package com.mall.action;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mall.bean.AccountStatus;
import com.mall.biz.ProductManager;
import com.mall.dao.impl.DBDao;
import com.mall.entity.CartEntity;
import com.mall.entity.ProductEntity;
import com.mall.global.Constant;
import com.opensymphony.xwork2.ActionSupport;

public class ShopcartAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	private String productid;
	private String q;
	private String quantity;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String updateProduct(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		AccountStatus account=(AccountStatus)session.getAttribute("account");
		email=account.getEmail();
		productid=request.getParameter("productid");
		System.out.println(quantity);
		if(quantity.equals("0")){
			deleteProductInCart(productid);
		}
		System.out.println(new DBDao().update(String.format(Constant.UPDATE_SHOPCART,quantity, email,productid)));
		viewCart();
		return "cart";
	}
	public String deleteProductInCart(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		AccountStatus account=(AccountStatus)session.getAttribute("account");
		email=account.getEmail();
		productid=request.getParameter("productid");
		System.out.println(quantity);
		System.out.println(new DBDao().update(String.format(Constant.DELTE_SHOPCART, email,productid)));
		viewCart();
		return "cart";
	}
	public String deleteProductInCart(String productid){
		System.out.println(quantity);
		System.out.println(new DBDao().update(String.format(Constant.DELTE_SHOPCART, email,productid)));
		viewCart();
		return "cart";
	}
	public String deleteProduct(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		AccountStatus account=(AccountStatus)session.getAttribute("account");
		email=account.getEmail();
		productid=request.getParameter("productid");
		System.out.println(new DBDao().update(String.format(Constant.DELTE_SHOPCART, email,productid)));
		viewCart();
		return "index";
	}
	public String addProduct(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		AccountStatus account=(AccountStatus)session.getAttribute("account");
		if(account==null){
			super.addFieldError("error", "请先登录");
		}
		email=account.getEmail();
		productid=request.getParameter("productid");
		System.out.println(String.format(Constant.ADD_SHOPCART, email,productid,"1"));
		if(!new DBDao().update(String.format(Constant.ADD_SHOPCART, email,productid,"1"))){
			System.out.println("Product has exist");
			super.addFieldError("error", "商品已在你的购物车内");
			return INPUT;
		}
		return "index";
	}
	public void viewCart(){
		HttpServletRequest request=ServletActionContext.getRequest();
		List<ProductEntity> list  = null;
		int total=0;
		String quantity[];
		HttpSession session=request.getSession();
		AccountStatus account = (AccountStatus)session.getAttribute("account");
		if(account!=null){
		list = collection(account.getEmail());
		quantity=q.split(";");
		for(int i=0;i<list.size();i++){
			quantity[i]=quantity[i].replaceAll("null", "");
		    total+=Integer.parseInt(list.get(i).getNewprice())*Integer.parseInt(quantity[i]);
		    }
		request.setAttribute("total", total);
		request.setAttribute("list", list);
		request.setAttribute("quantity", quantity);
	  }
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
    		List<ProductEntity> list= new ProductManager().UserCartProduct(email);
    		return list;
    	}
    }
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		HttpSession session=ServletActionContext.getRequest().getSession();
		AccountStatus account=(AccountStatus)session.getAttribute("account");
		if(account==null){
			super.addFieldError("error", "请先登录");
		}
	}
    @Override
    public String execute() throws Exception { 
    	// TODO Auto-generated method stub
    	viewCart();
    	return SUCCESS;
    }
}
