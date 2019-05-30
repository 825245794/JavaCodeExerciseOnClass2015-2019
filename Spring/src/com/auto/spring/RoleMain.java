/**  
* @Title: RoleMain.java
* @Package com.auto.spring
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年2月14日 下午1:07:40
* @version V1.0  
*/
package com.auto.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.auto.spring.Role;
import com.auto.spring.RoleImpl;
import com.auto.spring.PojoConfig;
/**
 * @ClassName: RoleMain
 * @Description:
 * @author LJL
 * @date 2018/02/14 13:07:40
 *
 */
public class RoleMain {

    /**
    * @Title: main
    * @Description: 
    * @param @param args
    * @return void 
    * @throws
    */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        ApplicationContext context = new AnnotationConfigApplicationContext(PojoConfig.class);
        Role role = context.getBean(Role.class);
        //RoleImpl roleImpl = (RoleImpl)context.getBean("roleImpl");
        //roleImpl.setRole(role);
       // roleImpl.printRoleInfo();
    }

}
