package init;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetCitySpell {
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
			ResultSet rs=sql.searchSQL("select spell from machine where city=\""+city+"\"");
			rs.next();
			city=rs.getString("spell");
			rs.close();
			sql.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		

	}
}

