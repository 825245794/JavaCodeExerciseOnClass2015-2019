/**  
* @Title: ShopDAO.java
* @Package com.shop.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年12月11日 下午9:43:56
* @version V1.0  
*/
package com.shop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.bean.Message;
import com.shop.util.DBUtils;

/**
 * @ClassName: ShopDAO
 * @Description:
 * @author LJL
 * @date 2017/12/11 21:43:56
 *
 */
public class ShopDAO {
	PreparedStatement pre = null;
	Connection conn = null;
	public void add(Message s) throws SQLException {
		// TODO Auto-generated method stub
		try{
			Class.forName("com.mysql.jdbc.Driver");
	    	new DBUtils();
			conn = DBUtils.getConnection();
			PreparedStatement pre=conn.prepareStatement("insert into s_shop(shopname) values (?)");
			pre.setString(1, s.getShopname());
			System.out.println(pre.executeUpdate());
	    	conn.close();
	    	pre.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	
	public void update(Message s) throws SQLException {
		// TODO Auto-generated method stub
		try{
			Class.forName("com.mysql.jdbc.Driver");
	    	new DBUtils();
			conn = DBUtils.getConnection();
			PreparedStatement pre=conn.prepareStatement("update s_shop set shopname=? where id=? ");
			pre.setString(1, s.getShopname());
			pre.setString(2, s.getId());
			pre.executeUpdate();
	    	conn.close();
	    	pre.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		try{
			Class.forName("com.mysql.jdbc.Driver");
	    	new DBUtils();
			conn = DBUtils.getConnection();
			PreparedStatement pre=conn.prepareStatement( "delete from s_shop where id=?");
			pre.setInt(1, id);
			pre.executeUpdate();
	    	conn.close();
	    	pre.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
	}


	
	public List<Message> findAll() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from s_shop";
		List<Message> list = new ArrayList<Message>();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			new DBUtils();
			conn=DBUtils.getConnection();
        	pre=conn.prepareStatement(sql);
        	ResultSet rs = pre.executeQuery();
        	while(rs.next()){
        		Message message = new Message();
        		message.setId(rs.getString("id"));
        		message.setShopname(rs.getString("shopname"));
        		list.add(message);
        	}
    	}catch (Exception e) {
			// TODO: handle exception
    		return null;
		}
		return list;
	}
}
