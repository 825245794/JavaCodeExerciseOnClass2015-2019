/**  
* @Title: Users.java
* @Package com.ssh2.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年1月12日 下午3:09:48
* @version V1.0  
*/
package com.ssh2.dao;

import java.util.List;

import com.ssh2.entity.Users;

/**
 * @ClassName: Users
 * @Description:
 * @author LJL
 * @date 2018/01/12 15:09:48
 *
 */
public interface UserDAO {
	public List<?> search(Users condition);
}
