/**  
* @Title: ManagerController.java
* @Package com.sms.controller
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月14日 下午8:22:09
* @version V1.0  
*/
package com.sms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.sms.entity.DetailsEntity;
import com.sms.service.DetailsService;

/**
 * @ClassName: ManagerController
 * @Description:
 * @author LJL
 * @date 2018/03/14 20:22:09
 *
 */
@Controller
public class ManagerController {
    @Autowired
    private DetailsService detailsService;
    @RequestMapping("/add")
    public ModelAndView addContact(@SessionAttribute(value = "user", required = false) String username, DetailsEntity detailsEntity){
        ModelAndView mv = new ModelAndView();
        System.out.println("username"+username);
        if(username == null || "".equals(username)){ 
            mv.addObject("error", "尚未登录");
            mv.setViewName("index");
            
            return mv;
        } 
        detailsEntity.setPhone_number(username);
        detailsService.add(detailsEntity);
        List<DetailsEntity> list = detailsService.findAll(username);
        mv.addObject("details", list);
        mv.setViewName("detail"); 
        return mv;
    }
}
