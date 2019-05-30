package com.mall.action;

import com.mall.dao.impl.DBDao;
import com.mall.global.Constant;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	/**
	 * 
	 */
    private String username;
    private String password;
    private String comfirepassword;
    private String email;
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

	public String getComfirepassword() {
		return comfirepassword;
	}

	public void setComfirepassword(String comfirepassword) {
		this.comfirepassword = comfirepassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private static final long serialVersionUID = 1L;
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		if(!password.equals(comfirepassword)){
			super.addFieldError("error", "两次密码不相同");
		}
		if(!new DBDao().update(String.format(Constant.REGISTER_ACCOUNT, username,password,"0",email))){
			super.addFieldError("error", "用户名已存在");
		}
		
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}
