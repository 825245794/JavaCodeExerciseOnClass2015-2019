/**  
* @Title: StudentDAO.java
* @Package com.test.dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月12日 下午8:59:50
* @version V1.0  
*/
package com.test.dao;

import com.test.entity.StudentEntity;

/**
 * @ClassName: StudentDAO
 * @Description:
 * @author LJL
 * @date 2017/11/12 20:59:50
 *
 */
public interface StudentDAO {
    public void add(StudentEntity s);
    public void delete(StudentEntity s);
    public StudentEntity get(int i);
    public void update(StudentEntity s);

}
