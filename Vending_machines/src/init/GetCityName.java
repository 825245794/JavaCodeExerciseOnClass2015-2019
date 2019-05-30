package init;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetCityName {
	String city;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
		init();
	}
	
	public void init(){
		try{
			NormalSQL sql=new NormalSQL();
			ResultSet rs=sql.searchSQL("select city from machine where spell=\""+city+"\"");
			rs.next();
			city=rs.getString("city");
			rs.close();
			sql.close();
		}catch(SQLException e){
			e.printStackTrace();
		}


	}
}
