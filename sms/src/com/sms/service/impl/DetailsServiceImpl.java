/**  
* @Title: DetailsServiceImpl.java
* @Package com.sms.service.impl
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月13日 下午8:08:38
* @version V1.0  
*/
package com.sms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sms.dao.DetailsDao;
import com.sms.entity.DetailsEntity;
import com.sms.service.DetailsService;

/**
 * @ClassName: DetailsServiceImpl
 * @Description:
 * @author LJL
 * @date 2018/03/13 20:08:38
 *
 */
@Service
public class DetailsServiceImpl implements DetailsService{
    @Autowired
    private DetailsDao DetailsDao;
    /*
    * Title: findAll
    * Description: 
    * @return
    * @see com.sms.service.DetailsService#findAll()
    */
    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public List<DetailsEntity> findAll(String phone_num) {
        // TODO Auto-generated method stub
        return DetailsDao.findAll(phone_num);
    }
    /*
    * Title: add
    * Description: 
    * @param detailsDao
    * @see com.sms.service.DetailsService#add(com.sms.dao.DetailsDao)
    */
    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
    public int add(DetailsEntity detailsEntity) {
        // TODO Auto-generated method stub
        return DetailsDao.add(detailsEntity);
    }

}
