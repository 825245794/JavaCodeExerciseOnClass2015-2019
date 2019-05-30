/**  
* @Title: User.java
* @Package com.shw
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年12月3日 下午2:09:48
* @version V1.0  
*/
package com.shw;

import java.util.Random;

/**
 * @ClassName: User
 * @Description:
 * @author LJL
 * @date 2017/12/03 14:09:48
 *
 */
public class Users {
	private String loginName;
	private String loginpwd;
    public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginpwd() {
		return loginpwd;
	}
	public void setLoginpwd(String loginpwd) {
		this.loginpwd = loginpwd;
	}
	public Users(){
    	this.loginpwd = String.valueOf(new Random().nextInt(100000));
    }
	public Users(String loginName, String loginpwd){
		this.loginName = loginName;
		this.loginpwd = loginpwd;
	}
}
