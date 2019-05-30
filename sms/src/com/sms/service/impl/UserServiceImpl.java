/**  
* @Title: UserDaoImpl.java
* @Package com.sms.dao.impl
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月11日 下午6:42:46
* @version V1.0  
*/
package com.sms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sms.dao.UserDao;
import com.sms.service.UserService;
import com.sms.entity.UserEntity;

/**
 * @ClassName: UserDaoImpl
 * @Description:
 * @author LJL
 * @date 2018/03/11 18:42:46
 *
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    /*
    * Title: UserLogin
    * Description: 
    * @param username
    * @param password
    * @return
    * @see com.sms.dao.UserDao#UserLogin(java.lang.String, java.lang.String)
    */
    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public Integer UserLogin(UserEntity userEntity) {
        // TODO Auto-generated method stub
        return userDao.UserLogin(userEntity);
    }

}
