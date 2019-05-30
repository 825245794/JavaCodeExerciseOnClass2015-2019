/**  
* @Title: UserDao.java
* @Package com.sms.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月11日 下午7:15:24
* @version V1.0  
*/
package com.sms.dao;

import org.springframework.stereotype.Repository;

import com.sms.entity.UserEntity;

/**
 * @ClassName: UserDao
 * @Description:
 * @author LJL
 * @date 2018/03/11 19:15:24
 *
 */
@Repository("UserDao")
public interface UserDao {
    public Integer UserLogin(UserEntity userEntity);

}
