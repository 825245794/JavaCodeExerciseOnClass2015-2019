package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class stock_change extends ActionSupport{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public HttpServletRequest request=ServletActionContext.getRequest();
private String stock[];
private String dno[];
private String mno[];


public String[] getStock() {
	return stock;
}
public void setStock(String[] stock) {
	this.stock = stock;
}
public String[] getDno() {
	return dno;
}
public void setDno(String[] dno) {
	this.dno = dno;
}
public String[] getMno() {
	return mno;
}
public void setMno(String[] mno) {
	this.mno = mno;
}
public void database(){
	try{
		NormalSQL sql=new NormalSQL();
		Class.forName(sql.getClassreference());
		String url=sql.getUrl();
		String username=sql.getUsername();
		String password=sql.getPassword();
		Connection conn=DriverManager.getConnection(url,username,password);
		Statement stmt=conn.createStatement();
		stmt.executeUpdate("SET SQL_SAFE_UPDATES = 0");
		for(int i=0;i<stock.length;i++){
		stmt.executeUpdate("update machineinfo set stock=\""+stock[i]+"\" where mno=\""+mno[i]+"\" and dno=\""+dno[i]+"\"");
		}
		stmt.close();
		conn.close();
	}catch(SQLException e){
		e.printStackTrace();
	}
	catch(ClassNotFoundException e){
		e.printStackTrace();
	}
}
@Override
	public String execute() throws Exception {
	
		if("".equals(stock)||"".equals(mno)||"".equals(dno)||stock==null||mno==null||dno==null){
			return "ERROR";
		}
		else{
			database();
			return "SUCCESS";
		}
	}
}
