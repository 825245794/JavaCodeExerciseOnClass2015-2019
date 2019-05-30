package com.mall.tool;

import java.sql.DriverManager;
import java.sql.Statement;

import com.mall.dao.impl.DBDao;
import com.mall.dao.util.DBUtil;

public class DBTableCreateTool {
	public static String m_user(){
		String sql="create table m_user("+
				 "email varchar(50),"+
				 "usernames varchar(50),"+
				 "passwords varchar(50),"+
				 "isadmin varchar(50)"+
				 ")";
		return sql;
	}
	public static String m_product(){
		String sql="create table m_product("+
	             "productid varchar(50),"+
				 "productname varchar(50),"+
	             "producttitle varchar(50),"+
				 "oldprice varchar(50),"+
	             "newprice varchar(50),"+
				 "buyprice varchar(50),"+
	             "img varchar(50)"+
				 ")";
		return sql;
	}
    public static String m_cart(){
    	String sql="create table m_cart("+
                 "email varchar(50),"+
    			 "productid varchar(50),"+
                 "quantity varchar(50),"+
    			 "constraint PK_EP primary key (email, productid)"+
    			 ")";
    	return sql;
    }
    public static String flower_admintable(){
    	String sql="create table  flower_admintable("+
                  "adminid varchar(20) primary key,"+
                  "apass varchar(20) not null"+
                ")";
    	return sql;
    }
	public static void main(String[] args) {
	  DBDao db=new DBDao();
	  //System.out.println(db.update(m_user()));
	  //System.out.println(db.update(m_product()));
	  //System.out.println(db.update(m_cart()));
	  System.out.println(db.update(flower_admintable()));
    }  
}
