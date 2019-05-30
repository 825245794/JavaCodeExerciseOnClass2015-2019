/**  
* @Title: UserDao.java
* @Package com.chat.Dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月31日 下午3:57:32
* @version V1.0  
*/
package com.chat.Dao;

import java.sql.ResultSet;

import com.chat.globle.DBConnection;
import com.chat.pojo.User;

/**
 * @ClassName: UserDao
 * @Description:
 * @author LJL
 * @date 2018/03/31 15:57:32
 *
 */
public class UserDao {
    public Integer Count(User user){
        String sql = String.format("select count(*) from user where username='%s' and password='%s'", user.getUsername(),user.getPassword());
        ResultSet rs = new DBConnection().find(sql);
        Integer count = 0;
        try{
            while(rs.next()){
                count = Integer.parseInt(rs.getString("count(*)"));
            }
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return count;
    }
}
