/**  
* @Title: UserDao.java
* @Package com.sms.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月11日 下午6:39:53
* @version V1.0  
*/
package com.sms.service;

import com.sms.entity.UserEntity;

/**
 * @ClassName: UserDao
 * @Description:
 * @author LJL
 * @date 2018/03/11 18:39:53
 *
 */
public interface UserService {
    public Integer UserLogin(UserEntity userEntity);
}
