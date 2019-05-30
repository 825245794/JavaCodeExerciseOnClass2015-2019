/**  
* @Title: User.java
* @Package com.chat.pojo
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月31日 下午3:45:04
* @version V1.0  
*/
package com.chat.pojo;

/**
 * @ClassName: User
 * @Description:
 * @author LJL
 * @date 2018/03/31 15:45:04
 *
 */
public class User {
    private String username;
    private String password;
    public User(String usernmne, String password){
        this.username = usernmne;
        this.password = password;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
}
