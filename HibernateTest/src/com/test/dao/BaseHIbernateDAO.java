/**  
* @Title: BaseHIbernateDAO.java
* @Package com.test.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月12日 下午8:44:26
* @version V1.0  
*/
package com.test.dao;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.factory.HibernateSessionFactory;

/**
 * @ClassName: BaseHIbernateDAO
 * @Description:
 * @author LJL
 * @date 2017/11/12 20:44:26
 *
 */
public class BaseHIbernateDAO {
    protected void add(Object object){
    	Transaction tran = null;
    	Session session = HibernateSessionFactory.getSession();
    	try{
    		tran = session.beginTransaction();
    		session.save(object);
    		tran.commit();
    	}catch (Exception e) {
			// TODO: handle exception
    		if(tran!=null){
    			tran.rollback();
    		}
		}finally{
			HibernateSessionFactory.closeSession();
		}
    }
    
    protected Object get(Class cla,Serializable id){
    	Object object = null;
    	Session session = HibernateSessionFactory.getSession();
    	try{
    		object = session.get(cla, id);
    	}catch (Exception e) {
			// TODO: handle exception
    		e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
    	return object;
    }
    
    protected void delete(Object object){
    	Transaction tran = null;
    	Session session = HibernateSessionFactory.getSession();
    	try{
    		tran = session.beginTransaction();
    		session.delete(object);
    		tran.commit();
    	}catch (Exception e) {
			// TODO: handle exception
    		if(tran!=null){
    			tran.rollback();
    		}
		}finally{
			HibernateSessionFactory.closeSession();
		}
    }
    
    protected void update(Object object){
    	Transaction tran = null;
    	Session session = HibernateSessionFactory.getSession();
    	try{
    		tran = session.beginTransaction();
    		session.update(object);
    		tran.commit();
    	}catch(Exception e){
    		if(tran!=null){
    			tran.rollback();
    		}
    	}finally{
    		HibernateSessionFactory.closeSession();
    	}
    }
}
