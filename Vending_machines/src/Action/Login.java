package Action;

import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class Login extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean database(){
		String status=null;
		try{
		NormalSQL sqll=new NormalSQL();
		ResultSet rss=sqll.searchSQL("select password from admin where username=\""+username+"\"");
		rss.next();
		String psw=rss.getString("password");
		if(!psw.equals(password)){
			return false;
		}
		NormalSQL sql=new NormalSQL();
		ResultSet rs=sql.searchSQL("select status from admin where username=\""+username+"\"and password =\""+password+"\"");
		rs.next();
		status=rs.getString("status");
		sql.close();
		}catch(Exception e){
			return false;
		}
		if(status.equals("1")){
			return true;
		}
		else{
			return false;
		}
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(!database()||username==null||password==null||"".equals(username)||"".equals(password)){
			return "input";
		}
		return SUCCESS;
	}
}
