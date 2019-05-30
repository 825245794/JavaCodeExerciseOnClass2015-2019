/**  
* @Title: DetailsDao.java
* @Package com.sms.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月13日 下午8:05:47
* @version V1.0  
*/
package com.sms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sms.entity.DetailsEntity;

/**
 * @ClassName: DetailsDao
 * @Description:
 * @author LJL
 * @date 2018/03/13 20:05:47
 *
 */
@Repository("DetailsDao")
public interface DetailsDao {
    public List<DetailsEntity> findAll(String phone_num);
    public int add(DetailsEntity detailsEntity);
}
