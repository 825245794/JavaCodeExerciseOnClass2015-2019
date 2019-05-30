/**  
* @Title: RoleImpl.java
* @Package com.auto.spring
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年2月14日 下午1:04:24
* @version V1.0  
*/
package com.auto.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
/**
 * @ClassName: RoleImpl
 * @Description:
 * @author LJL
 * @date 2018/02/14 13:04:24
 *
 */
@Component
public class RoleImpl implements RoleService{

    /*
    * Title: printRoleInfo
    * Description: 
    * @param role
    * @see com.auto.spring.RoleService#printRoleInfo(com.auto.spring.Role)
    */
    @Autowired
    Role role = null;
    public RoleImpl(){
        
    }
    public Role getRole() {
        return role;
    }
    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public void printRoleInfo() {
        // TODO Auto-generated method stub
        System.out.println(role.getId());
    }

}
