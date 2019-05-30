/**  
* @Title: TestSpringHibernate.java
* @Package com.ssh2.test
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年1月12日 下午3:37:24
* @version V1.0  
*/
package com.ssh2.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssh2.biz.UserBiz;
import com.ssh2.entity.Users;

/**
 * @ClassName: TestSpringHibernate
 * @Description:
 * @author LJL
 * @date 2018/01/12 15:37:24
 *
 */
public class TestSpringHibernate {

	/**
	* @Title: main
	* @Description: 
	* @param @param args
	* @return void 
	* @throws
	*/
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserBiz userBiz = (UserBiz)context.getBean("userBiz");
		Users condition = new Users();
		List<?> list = userBiz.login(condition);
		condition.setLoginName("admin");
		condition.setLoginPwd("123456");
		if(list.size()>0){
			System.out.println("Success");
		}else{
			System.out.println("Fail");
		}
		((ClassPathXmlApplicationContext)context).destroy();
	}

}
