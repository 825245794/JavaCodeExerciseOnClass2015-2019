/**  
* @Title: ConvAciton.java
* @Package com.validate.action
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年4月10日 上午10:43:50
* @version V1.0  
*/
package com.validate.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @ClassName: ConvAciton
 * @Description:
 * @author LJL
 * @date 2018/04/10 10:43:50
 *
 */
public class ConvAciton extends ActionSupport{
    private int age;
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    /*
    * Title: validate
    * Description: 
    * @see com.opensymphony.xwork2.ActionSupport#validate()
    */
    @Override
    public void validate() {
        // TODO Auto-generated method stub
        System.out.println(age);
        if(age <= 1 || age >= 150){
            addFieldError("age", "年龄在1-150之间");
        }
    }
    /*
    * Title: execute
    * Description: 
    * @return
    * @throws Exception
    * @see com.opensymphony.xwork2.ActionSupport#execute()
    */
    @Override
    public String execute() throws Exception {
        // TODO Auto-generated method stub
        return SUCCESS;
    }

}
