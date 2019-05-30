/**  
* @Title: Load.java
* @Package com.shop.bean
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年12月12日 上午8:39:05
* @version V1.0  
*/
package com.shop.bean;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.ShopDAO;
import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * @ClassName: Load
 * @Description:
 * @author LJL
 * @date 2017/12/12 08:39:05
 *
 */
public class Load {
   List<Message> list =new ArrayList<Message>();

public List<Message> getList() {
	return list;
}

public void setList(List<Message> list) {
	this.list = list;
}
public Load(){
	ShopDAO s = new ShopDAO();
	try {
		list=s.findAll();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
