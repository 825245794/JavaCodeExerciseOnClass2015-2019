package Pay;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class Paying  extends ActionSupport{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String dno;
private String mno;
public String getDno() {
	return dno;
}
public void setDno(String dno) {
	this.dno = dno;
}
public String getMno() {
	return mno;
}
public void setMno(String mno) {
	this.mno = mno;
}

@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
	//System.out.println(mno+dno);
		if(dno==null||mno==null)return "ERROR";
		else{
			String result=database();
			return result;
		}
	}
	public String database(){
		try{
		ResultSet rs =null;
		String stock = null;
		String hassell = null;
		NormalSQL sql=new NormalSQL();
		rs=sql.searchSQL("select * from machineinfo where mno='"+mno+"' AND dno='"+dno+"'");
		while(rs.next()){
			stock=rs.getString("stock").toString();
			hassell=rs.getString("hassell").toString();
		}
		sql.close();
	//	System.out.println(stock+hassell);
		stock=String.valueOf(Integer.parseInt(stock)-1);
		hassell=String.valueOf(Integer.parseInt(hassell)+1);
		//System.out.println(stock+hassell);
		sql.ChangeSQL("UPDATE machineinfo SET hassell=\""+hassell+"\" , stock=\""+stock+"\"WHERE mno='"+mno+"' and dno='"+dno+"'");
		rs.close();
		return "SUCCESS";
		}catch(Exception e){
			e.printStackTrace();
			return "ERROR";
		}
	}
	public void database1(){
		ResultSet rs =null;
		String stock = null;
		String hassell = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://127.0.0.1:3306/vending_machine?characterEncoding=utf-8";
			String username="root";
			String password="ljlj";
			Connection conn=DriverManager.getConnection(url,username,password);
			Statement stmt=conn.createStatement();
			rs=stmt.executeQuery("select * from machineinfo where mno='"+mno+"' AND dno='"+dno+"'");
			while(rs.next()){
				stock=rs.getString("stock").toString();
				hassell=rs.getString("hassell").toString();
			}
			//System.out.println(stock+hassell);
			stock=String.valueOf(Integer.parseInt(stock)-1);
			hassell=String.valueOf(Integer.parseInt(hassell)+1);
			//System.out.println(stock+hassell);
			stmt.executeUpdate("UPDATE machineinfo SET hassell=\""+hassell+"\" , stock=\""+stock+"\"WHERE mno='"+mno+"' and dno='"+dno+"'");
			rs.close();
			stmt.close();
			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
}
