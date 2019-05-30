package init;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import database.drink;

public class NormalSQL {
	String sql;
	Connection conn;
	Statement stmt;
	ResultSet rs;
	String url="jdbc:mysql://localhost:3306/vending_machine?characterEncoding=utf-8&serverTimezone=UTC&useSSL=false";
	String username="root";
	String password="ljlj";
	String Classreference="com.mysql.jdbc.Driver";
	//String Classreference="com.mysql.jdbc.Driver";
	public String getClassreference() {
		return Classreference;
	}
	public String getUrl() {
		return url;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getSql() {
		return sql;
	}
	public void setSql(String sql) {
		this.sql = sql;
	}
	public ResultSet searchSQL(String sql){
		rs= null;
		try{
			Class.forName(Classreference);
			conn=DriverManager.getConnection(url,username,password);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
		
			
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		return null;
	}
	public void close(){
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void ChangeSQL(String sql){
		try{
			Class.forName(Classreference);
			Connection conn=DriverManager.getConnection(url,username,password);
			Statement stmt=conn.createStatement();
			stmt.executeUpdate(sql);
//			stmt.close();
//			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	
	}
}
