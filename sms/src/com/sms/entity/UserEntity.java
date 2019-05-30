/**  
* @Title: UserEntity.java
* @Package com.sms.entity
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月11日 下午6:50:10
* @version V1.0  
*/
package com.sms.entity;

import org.springframework.stereotype.Component;

/**
 * @ClassName: UserEntity
 * @Description:
 * @author LJL
 * @date 2018/03/11 18:50:10
 *
 */
@Component("UserEntity")
public class UserEntity {
    private String username;
    private String password;
    private String device;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getDevice() {
        return device;
    }
    public void setDevice(String device) {
        this.device = device;
    }
}
