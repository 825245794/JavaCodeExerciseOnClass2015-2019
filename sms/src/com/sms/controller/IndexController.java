/**  
* @Title: IndexController.java
* @Package com.sms.controller
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月11日 下午8:48:26
* @version V1.0  
*/
package com.sms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: IndexController test
 * @Description:
 * @author LJL
 * @date 2018/03/11 20:48:26
 *
 */
@Controller
public class IndexController {
    @RequestMapping("/index")
    public ModelAndView index(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }
}
