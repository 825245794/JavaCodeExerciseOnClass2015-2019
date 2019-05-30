/**  
* @Title: MessageDao.java
* @Package com.chat.Dao
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月31日 下午4:36:11
* @version V1.0  
*/
package com.chat.Dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.chat.globle.DBConnection;
import com.chat.pojo.Send;

/**
 * @ClassName: MessageDao
 * @Description:
 * @author LJL
 * @date 2018/03/31 16:36:11
 *
 */
public class MessageDao {
    public void send(Send send){
        String sql =String.format("insert into send (sender,recevier,dt,content) values ('%s','%s',now(),'%s')",send.getSender(),send.getRecevier(),send.getContent());
        new DBConnection().update(sql);
    }
    public List<Send> recevier(String username){
        String sql = String.format("select * from send where recevier='%s' order by dt desc",username);
        ResultSet rs = new DBConnection().find(sql);
        List<Send> list = new ArrayList<Send>();
        try{
            while(rs.next()){
                Send send = new Send();
                send.setSender(rs.getString("sender"));
                send.setContent(rs.getString("content"));
                send.setDt(rs.getString("dt"));
                send.setRecevier(rs.getString("recevier"));
                list.add(send);
            }
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return list;
    }
}
