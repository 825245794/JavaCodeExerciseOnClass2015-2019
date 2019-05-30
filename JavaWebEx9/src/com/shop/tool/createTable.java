/**  
* @Title: createTable.java
* @Package com.shop.tool
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月28日 上午9:13:31
* @version V1.0  
*/
package com.shop.tool;

import com.shop.dao.MessageDAO;

/**
 * @ClassName: createTable
 * @Description:
 * @author LJL
 * @date 2017/11/28 09:13:31
 * 
 */
public class createTable {
    public static void main(String[] args) {
    	//database run --> create database shop; 
		String sql = "create table s_shop(id int(11) NOT NULL AUTO_INCREMENT, shopname varchar(50) CHARACTER SET utf8DEFAULT NULL,PRIMARY KEY (`id`))";
		new MessageDAO().update(sql);
		sql = "insert into s_shop(shopname) values ('薯片')";
		new MessageDAO().update(sql);
		sql = "insert into s_shop(shopname) values ('薯泥')";
		new MessageDAO().update(sql);
		sql = "insert into s_shop(shopname) values ('薯条')";
		new MessageDAO().update(sql);
		sql = "insert into s_shop(shopname) values ('雪糕')";
		new MessageDAO().update(sql);
		sql = "insert into s_shop(shopname) values ('麦乐鸡')";
		new MessageDAO().update(sql);
		sql = "insert into s_shop(shopname) values ('吸管')";
		new MessageDAO().update(sql);
		sql = "insert into s_shop(shopname) values ('甜品')";
		new MessageDAO().update(sql);
	}
}
