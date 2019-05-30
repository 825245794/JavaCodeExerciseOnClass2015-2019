/**  
* @Title: UserBiz.java
* @Package com.ssh2.biz
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年1月12日 下午3:32:03
* @version V1.0  
*/
package com.ssh2.biz;

import java.util.List;

import com.ssh2.entity.Users;

/**
 * @ClassName: UserBiz
 * @Description:
 * @author LJL
 * @date 2018/01/12 15:32:03
 *
 */
public interface UserBiz {
    public List<?> login(Users condition);
}
