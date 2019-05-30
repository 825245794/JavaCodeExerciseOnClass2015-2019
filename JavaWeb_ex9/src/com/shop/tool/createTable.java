/**  
* @Title: createTable.java
* @Package com.shop.tool
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月28日 上午9:13:31
* @version V1.0  
*/
package com.shop.tool;

import com.shop.dao.MessageDAO;

/**
 * @ClassName: createTable
 * @Description:
 * @author LJL
 * @date 2017/11/28 09:13:31
 * 
 */
public class createTable {
    public static void main(String[] args) {
    	//database run --> create database shop; 
		String sql = "create table c_course(id int(11) NOT NULL AUTO_INCREMENT, course_name varchar(50) CHARACTER SET utf8 NULL,PRIMARY KEY (`id`))";
		new MessageDAO().create(sql);
		sql = "insert into c_course(course_name) values ('统计学')";
		new MessageDAO().create(sql);
		sql = "insert into c_course(course_name) values ('高等数学')";
		new MessageDAO().create(sql);
		sql = "insert into c_course(course_name) values ('线性代数')";
		new MessageDAO().create(sql);
		sql = "insert into c_course(course_name) values ('JSP')";
		new MessageDAO().create(sql);
		sql = "insert into c_course(course_name) values ('数据库测试')";
		new MessageDAO().create(sql);
		sql = "insert into c_course(course_name) values ('软件测试')";
		new MessageDAO().create(sql);
		sql = "insert into c_course(course_name) values ('召唤师峡谷培训')";
		new MessageDAO().create(sql);
	}
}
