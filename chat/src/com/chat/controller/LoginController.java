/**  
* @Title: LoginController.java
* @Package com.chat.controller
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月31日 下午3:43:01
* @version V1.0  
*/
package com.chat.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.chat.Dao.MessageDao;
import com.chat.Dao.UserDao;
import com.chat.pojo.User;

/**
 * @ClassName: LoginController
 * @Description:
 * @author LJL
 * @date 2018/03/31 15:43:01
 *
 */
public class LoginController extends HttpServlet {

    /**
    	 * Constructor of the object.
    	 */
    public LoginController() {
        super();
    }

    /**
    	 * Destruction of the servlet. <br>
    	 */
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }

    /**
    	 * The doGet method of the servlet. <br>
    	 *
    	 * This method is called when a form has its tag value method equals to get.
    	 * 
    	 * @param request the request send by the client to the server
    	 * @param response the response send by the server to the client
    	 * @throws ServletException if an error occurred
    	 * @throws IOException if an error occurred
    	 */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }

    /**
    	 * The doPost method of the servlet. <br>
    	 *
    	 * This method is called when a form has its tag value method equals to post.
    	 * 
    	 * @param request the request send by the client to the server
    	 * @param response the response send by the server to the client
    	 * @throws ServletException if an error occurred
    	 * @throws IOException if an error occurred
    	 */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User(username, password);
        Integer count = new UserDao().Count(user);
        if(count == 0){
            request.setAttribute("error", "密码错误");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            request.setAttribute("list", new MessageDao().recevier(user.getUsername()));
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
    }

    /**
    	 * Initialization of the servlet. <br>
    	 *
    	 * @throws ServletException if an error occurs
    	 */
    public void init() throws ServletException {
        // Put your code here
    }

}
