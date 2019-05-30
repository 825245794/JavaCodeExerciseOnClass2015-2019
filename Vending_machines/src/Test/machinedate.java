package Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class machinedate {
	Connection conn;
	Statement stmt;
	ResultSet rs;
	public machinedate(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://127.0.0.1:3306/vending_machine?characterEncoding=GBK";
			String username="root";
			String password="ljlj";
		    conn=DriverManager.getConnection(url,username,password);
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select count(NO) from machinedate");
	    	rs.next();
	    	String cookie=rs.getString("count(NO)").toString();
			int count=Integer.parseInt(cookie)+1;
			rs=stmt.executeQuery("select dno from machineinfo where MNO=\'100001\'");
			String dno="";
			String stock="";
			while(rs.next()){
				dno+=rs.getString("dno")+";";
				stock+="1;";
			}
			double total=0;
			rs=stmt.executeQuery("select sell_price from drink natural join (select dno from machineinfo where MNO=\"100001\")as mid");
			while(rs.next()){
				cookie=rs.getString("sell_price").toString();
				//cookie=cookie.substring(0, cookie.indexOf("."));
				total+=Double.parseDouble(cookie)*1;
			}
			String sql;
			for(int i=count;i<=12;i++){
				if(i<10)
				sql=insert(String.valueOf(i), "100001", "20160"+String.valueOf(i), dno,stock,String.valueOf(total));
				else
				sql=insert(String.valueOf(i), "100001", "2016"+String.valueOf(i), dno,stock,String.valueOf(total));
				stmt.executeUpdate(sql);
			}	
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
	public String insert(String no,String mno,String date,String dno,String stock,String total){
		
		return "insert into machinedate values(\'"+no+"\',\'"+mno+"\',\'"+date+"\',\'"+dno+"\',\'"+stock+"\',\'"+total+"\')";
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		machinedate a=new machinedate();
	}

}
