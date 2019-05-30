/**  
* @Title: UserDAOImpl.java
* @Package com.ssh2.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年1月12日 下午3:10:56
* @version V1.0  
*/
package com.ssh2.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.Transaction;

import com.ssh2.entity.Users;

/**
 * @ClassName: UserDAOImpl
 * @Description:
 * @author LJL
 * @date 2018/01/12 15:10:56
 *
 */
public class UserDAOImpl implements UserDAO{
	SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/*
	* Title: search
	* Description: 
	* @param condition
	* @return
	* @see com.ssh2.dao.UserDAO#search(com.ssh2.dao.UserDAO)
	*/
	
	

	@Override
	public List<?> search(Users condition) {
		// TODO Auto-generated method stub
		List<?> list = null;
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Users.class);
		Example example = Example.create(condition);
		c.add(example); 
		list = c.list();
		return list;
	}

}
