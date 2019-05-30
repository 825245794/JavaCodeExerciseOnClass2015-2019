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
import java.util.ArrayList;
import java.util.List;

import com.shop.bean.Message;
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
	    	String url = "jdbc:mysql://localhost:3306/course?characterEncoding=utf-8";  
	    	Class.forName("com.mysql.jdbc.Driver");
			String username = "root";
	    	String password = "ljlj";
	    	conn = DriverManager.getConnection(url, username, password);
		}catch (SQLException | ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    
    
	}
	public void create(String sql){
		try{
			pre=conn.prepareStatement(sql);
			pre.executeUpdate();
        	conn.close();
        	pre.close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void update(Message message){
		try{
			pre=conn.prepareStatement("update c_course set course_name=? where id=?");
			pre.setString(1, message.getCoursename());
			pre.setString(2, message.getId());
			pre.executeUpdate();
        	conn.close();
        	pre.close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
    public List<Message> findById(String id){
    List<Message> list = new ArrayList<Message>();
	try{
        	pre=conn.prepareStatement("select * from c_course where id = ?");
        	pre.setString(1, id);
        	ResultSet rs = pre.executeQuery();
		    while(rs.next()){
			  Message m = new Message();
			  m.setId(rs.getString("id"));
			  m.setCoursename(rs.getString("course_name"));
			  list.add(m);
		    }
		    return list;
    	}catch (Exception e) {
			// TODO: handle exception
    		return null;
		}
    }
    public List<Message> findAll(){
	try{
            List<Message> list = new ArrayList<Message>();
        	pre=conn.prepareStatement("select * from c_course");
        	ResultSet rs = pre.executeQuery();
		    while(rs.next()){
			  Message m = new Message();
			  m.setId(rs.getString("id"));
			  m.setCoursename(rs.getString("course_name"));
			  list.add(m);
		    }
		    return list;
    	}catch (Exception e) {
			// TODO: handle exception
    		return null;
		}
    }
}
