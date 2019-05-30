/**  
* @Title: DetailsEntity.java
* @Package com.sms.entity
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月13日 下午8:06:10
* @version V1.0  
*/
package com.sms.entity;

import org.springframework.stereotype.Component;

/**
 * @ClassName: DetailsEntity
 * @Description:
 * @author LJL
 * @date 2018/03/13 20:06:10
 *
 */
@Component("DetailsEntity")
public class DetailsEntity {
    Integer id;
    String phone_number;
    String room_name;
    String room_id;
    String num;
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getPhone_number() {
        return phone_number;
    }
    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }
    public String getRoom_name() {
        return room_name;
    }
    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }
    public String getRoom_id() {
        return room_id;
    }
    public void setRoom_id(String room_id) {
        this.room_id = room_id;
    }
    public String getNum() {
        return num;
    }
    public void setNum(String num) {
        this.num = num;
    }
}
