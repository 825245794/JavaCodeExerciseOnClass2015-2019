/**  
* @Title: LoginController.java
* @Package com.sms.controller
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月10日 下午9:40:05
* @version V1.0  
*/
package com.sms.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sms.entity.DetailsEntity;
import com.sms.entity.UserEntity;
import com.sms.service.DetailsService;
import com.sms.service.UserService;

/**
 * @ClassName: LoginController
 * @Description:
 * @author LJL
 * @date 2018/03/10 21:40:05
 *
 */
@Controller("loginController")
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private UserEntity userEntity;
    @Autowired
    private UserService userService;
    @Autowired
    private DetailsService detailsService;
 
    @RequestMapping("/login")
    public ModelAndView login(String username, String password, HttpSession session){
        ModelAndView mv = new ModelAndView();
        userEntity.setUsername(username);
        userEntity.setPassword(password);
        Integer count = userService.UserLogin(userEntity);
        if(count == null || count!=1){
            mv.addObject("error", "密码或用户名错误");
            mv.setViewName("index"); 
            return mv;
        }
        session.setAttribute("user", username);
        List<DetailsEntity> list = detailsService.findAll(username);
        mv.addObject("details", list);
        mv.setViewName("detail"); 
        return mv;
    } 
    
    @RequestMapping("/regist")
    public ModelAndView regist(String username,String password, String comfirmPassword){
        ModelAndView mv = new ModelAndView();
        return mv;
    }
} 
