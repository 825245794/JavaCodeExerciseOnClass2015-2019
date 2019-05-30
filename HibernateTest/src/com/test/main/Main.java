package com.test.main;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.entity.StudentAnnotationEntity;
import com.test.entity.StudentEntity;
import com.test.factory.HibernateSessionFactory;

public class Main {
    public static void findAnnotation(){
    	Session session = HibernateSessionFactory.getSession();
        StudentAnnotationEntity s = (StudentAnnotationEntity)session.get(StudentAnnotationEntity.class, 1);
        System.out.println(s.getStudent_account());
        HibernateSessionFactory.closeSession();
    }
    
    public static void find(){
    	Session session = HibernateSessionFactory.getSession();
        StudentEntity s = (StudentEntity)session.get(StudentEntity.class, 1);
        System.out.println(s.getStudent_account());
        HibernateSessionFactory.closeSession();
    }
    
    public static void add(){
    	StudentEntity s = new StudentEntity();
    	s.setStudent_account("haha" );
    	Session session = HibernateSessionFactory.getSession();
    	Transaction tx = null;
    	try{
    		tx = session.beginTransaction();
    		session.save(s);
    		tx.commit();
    	}catch (Exception e) {
			// TODO: handle exception
    		if(tx!=null){
    			tx.rollback();
    		}
		}finally {
			HibernateSessionFactory.closeSession();
		}
    	
    }
    public static void delete(){
    	Session session = HibernateSessionFactory.getSession();
    	StudentEntity s = (StudentEntity)session.get(StudentEntity.class, 7);
    	Transaction tx = null;
    	try{
    		tx = session.beginTransaction();
    		session.delete(s);
    		tx.commit();
    	}catch (Exception e) {
			// TODO: handle exception
    		if(tx!=null){
    			tx.rollback();
    		}
		}finally {
			HibernateSessionFactory.closeSession();
		}
    	
    }
    public static void update(){
    	Session session = HibernateSessionFactory.getSession();
    	StudentEntity s = (StudentEntity)session.get(StudentEntity.class, 8);
    	s.setStudent_account("hahaupdate");
    	Transaction tx = null;
    	try{
    		tx = session.beginTransaction();
    		session.update(s);
    		tx.commit();
    	}catch (Exception e) {
			// TODO: handle exception
    		if(tx!=null){
    			tx.rollback();
    		}
		}finally {
			HibernateSessionFactory.closeSession();
		}
    	
    }
	public static void main(String[] args) {
		// TODO Auto-generated method stub
          //add();
		  //delete();
		  //update();
		  //find();
		findAnnotation();
	}

}
