/**  
* @Title: MessageDAO.java
* @Package com.shop.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月28日 上午9:11:19
* @version V1.0  
*/
package com.shop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * @ClassName: MessageDAO
 * @Description:
 * @author LJL
 * @date 2017/11/28 09:11:19
 *
 */
public class MessageDAO {
	PreparedStatement pre = null;
	Connection conn = null;
	public MessageDAO(){
		try{
	    	String url = "jdbc:mysql://localhost:3306/shop?characterEncoding=utf-8";  
	    	Class.forName("com.mysql.jdbc.Driver");
			String username = "root";
	    	String password = "ljlj";
	    	conn = DriverManager.getConnection(url, username, password);
		}catch (SQLException | ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    
    
	}
	public int update(String sql){
		try{
			pre=conn.prepareStatement(sql);
			int k = pre.executeUpdate();
        	conn.close();
        	pre.close();
        	return k;
		}catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	}
    public ResultSet find(String sql){
	try{
        	pre=conn.prepareStatement(sql);
        	ResultSet rs = pre.executeQuery();
        	return rs;
    	}catch (Exception e) {
			// TODO: handle exception
    		return null;
		}
    }
}
