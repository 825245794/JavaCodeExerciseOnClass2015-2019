package com.mall.biz;

import java.util.List;

import com.mall.dao.impl.DBDao;
import com.mall.entity.CartEntity;
import com.mall.entity.ProductEntity;
import com.mall.global.Constant;

public class ProductManager {
	public List<ProductEntity> searchProduct(String productid){
    	return new DBDao().search(String.format(Constant.SELECT_M_PRODUCT,productid), ProductEntity.class);
    }
	public List<CartEntity> UserCart(String email){
		return new DBDao().search(String.format(Constant.SELECT_M_PRODUCT_AND_M_CART_BY_EMAIL, email), CartEntity.class);
	}
	public List<ProductEntity> UserCartProduct(String email){
		return new DBDao().search(String.format(Constant.SELECT_M_PRODUCT_AND_M_CART_BY_EMAIL, email), ProductEntity.class);
	}
}
