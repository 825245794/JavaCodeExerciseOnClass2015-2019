package com.mall.dao.util;
import java.net.URL;
import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;

import org.apache.struts2.components.Password;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBUtil {
	private static ComboPooledDataSource ds = new ComboPooledDataSource();
	private static String url;
	private static String username;
	private static String password;
	public String getPassword() {
		return password;
	}
	
		public String getUrl() {
		return url;
	}

	public String getUsername() {
		return username;
	}

		/**
	      * 获得数据库连接对象
	      *
	      * @return
	      * @throws SQLException
	      */
	     public DBUtil(){
	    	
	     }
	     public static Connection getConnection() throws SQLException {
	         return ds.getConnection();
	    }
	
	      /** 
	      * 获得c3p0连接池对象
	      * @return
	      */
	     public static DataSource getDataSource() {
//	    	 try{
//		    	   ds.setUser("system");// 用户姓名
//		           ds.setPassword("Oracle12");// 用户密码
//		           ds.setJdbcUrl("jdbc:oracle:thin:@192.168.31.217:1521:ORCL");// MySQL数据库连接url
//		           ds.setDriverClass("oracle.jdbc.driver.OracleDriver");
//		           ds.setInitialPoolSize(10);
//                 ds.setMaxIdleTime(30);
//                 ds.setMaxPoolSize(20);
//                 ds.setMinPoolSize(10);
//                 return ds;
//		    	 }catch(Exception e){
//		    		 e.printStackTrace();
//		    	 }
//	    	 System.out.println(ds.getUser());
	    	 username = ds.getUser();
	    	 password = ds.getPassword();
	    	 url = ds.getJdbcUrl();
	         return ds;
	     }
	 
}
