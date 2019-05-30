package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class account extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Statement stmt;
	Connection conn;
	ResultSet rs;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		init();
		return "SUCCESS";
	}
	public void init(){
		try {
			NormalSQL sql=new NormalSQL();
			ResultSet rsm=sql.searchSQL("select mno from machine");
			while(rsm.next()){
				into(rsm.getString("mno").toString());
			}
		} catch (SQLException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void into(String mno){
		try{
			
			NormalSQL s=new NormalSQL();
			Class.forName(s.getClassreference());
			String url=s.getUrl();
			String username=s.getUsername();
			String password=s.getPassword();
		    conn=DriverManager.getConnection(url,username,password);
			
	    	String cookie;
			//System.out.print(mno);
			rs=s.searchSQL("select dno,stock from machineinfo where MNO=\""+mno+"\"");
			String dno="";
			String stock="";
			
			while(rs.next()){
				
				dno+=rs.getString("dno")+";";
				stock+=rs.getString("stock")+";";
			}
			double total=0;
			ResultSet rss=s.searchSQL("select sell_price from drink natural join (select dno from machineinfo where MNO=\""+mno+"\")as mid");
			ResultSet rsss=s.searchSQL("select dno,hassell from machineinfo where MNO='"+mno+"'");
			while(rss.next()){
				rsss.next();
				cookie=rss.getString("sell_price").toString();
				//cookie=cookie.substring(0, cookie.indexOf("."));
				total+=Double.parseDouble(cookie)*Double.parseDouble(rsss.getString("hassell").toString());
				s.ChangeSQL("SET SQL_SAFE_UPDATES = 0");
				s.ChangeSQL("update machineinfo set hassell=\""+"0"+"\" where mno=\""+mno+"\" and dno=\""+rsss.getString("dno")+"\"");
			}
			String sql;
		
				sql=insert(mno, dno,stock,String.valueOf(total));
				s.ChangeSQL(sql);
	
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	public String insert(String mno,String dno,String stock,String total){
		
		return "insert into machinedate values('"+mno+"',"+"now()"+",'"+dno+"','"+stock+"','"+total+"')";
	}

}
