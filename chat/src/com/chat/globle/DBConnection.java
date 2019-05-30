/**  
* @Title: DBConnection.java
* @Package com.chat.globle
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月31日 下午3:48:39
* @version V1.0  
*/
package com.chat.globle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @ClassName: DBConnection
 * @Description:
 * @author LJL
 * @date 2018/03/31 15:48:39
 *
 */
public class DBConnection {
    PreparedStatement pre = null;
    Connection conn = null;
    public DBConnection(){
        try{

            String url = "jdbc:mysql://localhost:3306/chat?characterEncoding=utf-8";
            Class.forName("com.mysql.jdbc.Driver");
            String username = "root";
            String password = "ljlj";
            conn = DriverManager.getConnection(url, username, password);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int update(String sql){
        try{
            pre=conn.prepareStatement(sql);
            int k = pre.executeUpdate();
            conn.close();
            pre.close();
            return k;
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return 0;
        }
    }
    public ResultSet find(String sql){ 
    try{
            pre=conn.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            return rs;
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        }
    }
}
