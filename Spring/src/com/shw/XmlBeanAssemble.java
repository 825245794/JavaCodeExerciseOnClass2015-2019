/**  
* @Title: XmlBeanAssemble.java
* @Package com.shw
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年12月3日 下午2:25:21
* @version V1.0  
*/
package com.shw;

import java.util.List;
import java.util.Map;
import java.util.Set;



/**
 * @ClassName: XmlBeanAssemble
 * @Description:
 * @author LJL
 * @date 2017/12/03 14:25:21
 *
 */
public class XmlBeanAssemble {
    List<?> myList1;
    List<?> myList2;
    Set<?> mySet;
	Map<?, ?> myMap;
    public List<?> getMyList1() {
		return myList1;
	}
	public void setMyList1(List<?> myList1) {
		this.myList1 = myList1;
	}
	public List<?> getMyList2() {
		return myList2;
	}
	public void setMyList2(List<?> myList2) {
		this.myList2 = myList2;
	}
	public Set<?> getMySet() {
		return mySet;
	}
	public void setMySet(Set<?> mySet) {
		this.mySet = mySet;
	}
	public Map<?, ?> getMyMap() {
		return myMap;
	}
	public void setMyMap(Map<?, ?> myMap) {
		this.myMap = myMap;
	}
	public void init(){
    	System.out.println("XmlBeanAssemble类的初始化方法init被调用！");
    }
    public void destroy(){
    	System.out.println("XmlBeanAssemble类的销毁方法destroy被调用！");
    }
    public void show(){
    	System.out.println("原型模式，zhangsan两次获得的密码分别为： ");
    	for(Object obj : myList1){
    		System.out.println(((Users)obj).getLoginpwd() + "  ");
    	}
    	System.out.println("");
    	System.out.println("单例模式，zhangsan两次获得密码分别为： ");
    	for(Object obj : myList2){
    		System.out.println(((Users)obj).getLoginpwd() + "  ");
    	}
    	System.out.println("");
    	for(Object obj : mySet){
    		if(obj instanceof Users)
    			System.out.print(((Users)obj).getLoginName() + "正在学习框架: " + " ");
    		else
    			System.out.print(obj + "\t");
    	}
    	System.out.println("");
    	for(Object key : myMap.keySet()){
    		System.out.println(key.toString() + ":" + myMap.get(key) + " ");
    	}
    	System.out.println("");
    }
}
