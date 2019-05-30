/**  
* @Title: Role.java
* @Package com.auto.spring
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年2月14日 下午1:01:49
* @version V1.0  
*/
package com.auto.spring;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * @ClassName: Role
 * @Description:
 * @author LJL
 * @date 2018/02/14 13:01:49
 *
 */
@Component
public class Role {
    @Value("1")
    private Long id;
    @Value("role_Name")
    private String roleName;
    @Value("note")
    private String note;
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getRoleName() {
        return roleName;
    }
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    public String getNote() {
        return note;
    }
    public void setNote(String note) {
        this.note = note;
    }
}
