/**  
* @Title: DetailsService.java
* @Package com.sms.service
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月13日 下午8:08:06
* @version V1.0  
*/
package com.sms.service;

import java.util.List;

import com.sms.entity.DetailsEntity;

/**
 * @ClassName: DetailsService
 * @Description:
 * @author LJL
 * @date 2018/03/13 20:08:06
 *
 */
public interface DetailsService {
    public List<DetailsEntity> findAll(String phone_num);
    public int add(DetailsEntity detailsEntity);

}
