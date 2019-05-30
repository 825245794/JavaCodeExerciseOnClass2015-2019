/**  
* @Title: TestXmlBeanAssemble.java
* @Package com.shw
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年1月12日 上午11:29:20
* @version V1.0  
*/
package com.shw;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @ClassName: TestXmlBeanAssemble
 * @Description:
 * @author LJL
 * @date 2018/01/12 11:29:20
 *
 */
public class TestXmlBeanAssemble {

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
				new ClassPathXmlApplicationContext("xmlbeanAssemble.xml");
		XmlBeanAssemble xba = (XmlBeanAssemble)context.getBean("xba");
		xba.show();
		((ClassPathXmlApplicationContext)context).destroy();
	}

}
