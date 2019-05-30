/**  
* @Title: StudentDAOImpl.java
* @Package com.test.dao.impl
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月12日 下午9:02:17
* @version V1.0  
*/
package com.test.dao.impl;

import com.test.dao.BaseHIbernateDAO;
import com.test.dao.StudentDAO;
import com.test.entity.StudentEntity;

/**
 * @ClassName: StudentDAOImpl
 * @Description:
 * @author LJL
 * @date 2017/11/12 21:02:17
 *
 */
public class StudentDAOImpl extends BaseHIbernateDAO implements StudentDAO{

	/* 
	* Title: add
	* Description: 
	* @param s
	* @see com.test.dao.StudentDAO#add(com.test.entity.StudentEntity)
	*/
	@Override
	public void add(StudentEntity s) {
		// TODO Auto-generated method stub
		super.add(s);
	}

	/* 
	* Title: delete
	* Description: 
	* @param s
	* @see com.test.dao.StudentDAO#delete(int)
	*/
	@Override
	public void delete(StudentEntity s) {
		// TODO Auto-generated method stub
		super.delete(s);
	}

	/* 
	* Title: get
	* Description: 
	* @param id
	* @return
	* @see com.test.dao.StudentDAO#get(int)
	*/
	@Override
	public StudentEntity get(int id) {
		// TODO Auto-generated method stub
		return (StudentEntity)super.get(StudentEntity.class, id);
	}

	/* 
	* Title: update
	* Description: 
	* @param s
	* @see com.test.dao.StudentDAO#update(com.test.entity.StudentEntity)
	*/
	@Override
	public void update(StudentEntity s) {
		// TODO Auto-generated method stub
		super.update(s);
	}

}
