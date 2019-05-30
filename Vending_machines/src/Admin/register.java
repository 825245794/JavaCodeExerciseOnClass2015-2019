package Admin;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class register extends ActionSupport{
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
public void database(){
	NormalSQL sql=new NormalSQL();
	sql.ChangeSQL("insert into admin values(' "+username+" ' ,' "+password+" ' ,\"1\")");
}
@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		database();
		return "SUCCESS";
	}
}
