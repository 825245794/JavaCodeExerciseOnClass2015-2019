package com.shop.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBUtils {
	private static ComboPooledDataSource ds = new ComboPooledDataSource();
	     public static Connection getConnection() throws SQLException {
	    	
	         return ds.getConnection();
	    }
	     public static DataSource getDataSource() {
	         return ds;
	     }
	 
}
