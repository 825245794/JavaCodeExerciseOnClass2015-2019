/**  
* @Title: UserManagerAction.java
* @Package com.ssh2.action
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年1月13日 上午9:06:46
* @version V1.0  
*/
package com.ssh2.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh2.biz.UserBiz;
import com.ssh2.entity.Users;

/**
 * @ClassName: UserManagerAction
 * @Description:
 * @author LJL
 * @date 2018/01/13 09:06:46
 *
 */
public class UserManagerAction extends ActionSupport {
	private String loginName;
	private String loginPwd;
	UserBiz userBiz;
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	/*
	* Title: execute
	* Description: 
	* @return
	* @throws Exception
	* @see com.opensymphony.xwork2.ActionSupport#execute()
	*/
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Users condition = new Users();
		condition.setLoginName(loginName);
		condition.setLoginPwd(loginPwd);
		List<?> list = userBiz.login(condition);
		if(list.size()>0){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
