/**  
* @Title: UserBizImpl.java
* @Package com.ssh2.biz
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年1月12日 下午3:32:47
* @version V1.0  
*/
package com.ssh2.biz;

import java.util.List;

import com.ssh2.dao.UserDAO;
import com.ssh2.entity.Users;

/**
 * @ClassName: UserBizImpl
 * @Description:
 * @author LJL
 * @date 2018/01/12 15:32:47
 *
 */
public class UserBizImpl implements UserBiz{
    UserDAO userDAO;
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	/*
	* Title: login
	* Description: 
	* @param condition
	* @return
	* @see com.ssh2.biz.UserBiz#login(com.ssh2.entity.Users)
	*/
	@Override
	public List<?> login(Users condition) {
		// TODO Auto-generated method stub
		return userDAO.search(condition);
	}

}
