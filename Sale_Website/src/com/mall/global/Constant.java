package com.mall.global;

public class Constant {
    public static final String SELECT_M_USER="select * from m_user where email = '%s'";
    public static final String SELECT_M_PRODUCT="select * from m_product where productid in(%s) ORDER BY to_number(productid）ASC";
    public static final int PRODUCT_MAX_SIZE=15;
    public static final String REGISTER_ACCOUNT="insert into m_user(usernames,passwords,isadmin,email) values('%s','%s','%s','%s')";
    public static final String SELECT_M_CART="select * from m_cart where email='%s' ORDER BY to_number(productid）ASC";
    public static final String DELTE_SHOPCART="delete from m_cart where email='%s' and productid='%s'";
    public static final String ADD_SHOPCART="insert into m_cart (email,productid,quantity) values('%s','%s','%s')";
    public static final String UPDATE_SHOPCART="update m_cart set quantity='%s' where email='%s' and productid='%s'";
    public static final String SELECT_M_PRODUCT_AND_M_CART_BY_EMAIL="SELECT * FROM m_product,m_cart where email='%s' and m_product.productid = m_cart.productid ORDER BY to_number(m_product.productid）ASC";
}
  