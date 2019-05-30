package com.mall.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mall.biz.ProductManager;
import com.mall.entity.ProductEntity;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDetailsAction extends ActionSupport{
	private String productid;
	
    public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	@Override
    public String execute() throws Exception {
    	// TODO Auto-generated method stub
		List<ProductEntity> productlist = new ProductManager().searchProduct(productid);
		HttpServletRequest request=ServletActionContext.getRequest(); 
		request.setAttribute("productlist", productlist);
    	return SUCCESS;
    }
}
