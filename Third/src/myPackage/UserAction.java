package myPackage;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String info;
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
//	public String execute(){
//		return SUCCESS;
//	}
	public String add()throws Exception{
		info="添加用户信息";
		return "add";
	}
	public String update()throws Exception{
		info="更新用户信息";
		return "update";
	}
}
