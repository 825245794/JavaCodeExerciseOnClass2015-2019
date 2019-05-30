/**  
* @Title: TestHelloWorld.java
* @Package com.shw
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月26日 上午11:49:05
* @version V1.0  
*/
package com.shw;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @ClassName: TestHelloWorld
 * @Description:
 * @author LJL
 * @date 2017/11/26 11:49:05
 *
 */
public class TestHelloWorld {
    public static void main(String[] args) {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		HelloWorld hw = (HelloWorld)context.getBean("hw");
		hw.show();
	}
}
