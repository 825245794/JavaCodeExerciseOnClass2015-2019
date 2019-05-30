
package a;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName: JavaBean
 * @Description:
 * @author LJL
 * @date 2017/11/21 09:02:50
 *
 */
public class ODBC {
	ResultSet rs;
	List<String> list = new ArrayList<String>();
    public List<String> getList() {
		return list;
	}
	public void setList(List<String> list) {
		this.list = list;
	}
	public ResultSet getRs() {
		return rs;
	}
	public void setRs(ResultSet rs) {
		this.rs = rs;
	}
	public ODBC(){
    	String username = "root";
    	String password = "ljlj";
    	try{

        	String url = "jdbc:odbc:mysql";  
        	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        	Connection conn = DriverManager.getConnection(url, username, password);
        	DatabaseMetaData dbmeta=conn.getMetaData() ;

        System.out.print("<br><b>数据库产品：</b>"+dbmeta.getDatabaseProductName());
        System.out.print("<br><b>数据库版本：</b>"+dbmeta.getDatabaseProductVersion());
        System. out.print("<br><b>用户名：</b>"+dbmeta.getUserName());
//        	PreparedStatement pre = null;
//        	String sql = "select * from mysql.user";
//        	pre=conn.prepareStatement(sql);
//        	setRs(pre.executeQuery());
//        	List<String> lists = new ArrayList<String>();
//        	while(rs.next()){
//        		lists.add(rs.getString("User"));
//        	}
//        	setList(lists);
//        	rs.close();
//        	conn.close();
//        	pre.close();
    	}catch (Exception e) {
			// TODO: handle exception
		}
    }
	public static void main(String[] args) {
		ODBC odbc = new ODBC();
		System.out.println("1");
	}
}

