/**  
* @Title: Send.java
* @Package com.chat.pojo
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月31日 下午4:32:08
* @version V1.0  
*/
package com.chat.pojo;

/**
 * @ClassName: Send
 * @Description:
 * @author LJL
 * @date 2018/03/31 16:32:08
 *
 */
public class Send {
    private String sender;
    private String recevier;
    private String dt;
    private String content;
    public String getSender() {
        return sender;
    }
    public void setSender(String sender) {
        this.sender = sender;
    }
    public String getRecevier() {
        return recevier;
    }
    public void setRecevier(String recevier) {
        this.recevier = recevier;
    }
    public String getDt() {
        return dt;
    }
    public void setDt(String dt) {
        this.dt = dt;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
}
