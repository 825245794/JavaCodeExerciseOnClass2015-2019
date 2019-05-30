package com.mall.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mall.bean.AccountStatus;
import com.mall.biz.LoginManager;
import com.mall.entity.UserEntity;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	/**
	 * 
	 */

//	private HttpSession session=ServletActionContext.getRequest().getSession();
//	private HttpServletRequest request=ServletActionContext.getRequest();
//	private HttpServletResponse response=ServletActionContext.getResponse();
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
	private boolean verifyPassword(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		try{
		List<UserEntity> list=new LoginManager().verifyPassword(username);
		if(list.get(0).getPasswords().equals(password)){
			AccountStatus account=new AccountStatus();
			account.setIsadmin(list.get(0).getIsadmin());
			account.setUsername(list.get(0).getUsernames());
			account.setEmail(username);
			session.setAttribute("account", account);
			return true;
		}
		return false;
	}catch(Exception e){
		System.out.println("Can't find username in database");
		return false;
	   }
	}
	public String returnText(String a){  
	    try{  
	    HttpServletResponse response = ServletActionContext.getResponse();  
	    response.setContentType("text/html;charset=utf-8");
	    PrintWriter out = response.getWriter();  
	    out.print(a);  
	    out.flush();  
	    out.close();  
	    }catch(Exception e){
	    	e.printStackTrace();
	    } 
		return INPUT;
	}  
	public void postPassword(){
		if(!verifyPassword()){
    		returnText("用户名或密码错误!");
    		}
    	else{
    		returnText("success");
    	}
	}
	public String loginOut(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.removeAttribute("account");
		return SUCCESS;
	}
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		
	}
    @Override
    public String execute() throws Exception {
    	// TODO Auto-generated method stub
    	return SUCCESS;
    }
}
