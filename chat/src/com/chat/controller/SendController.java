/**  
* @Title: SendController.java
* @Package com.chat.controller
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年3月31日 下午4:31:00
* @version V1.0  
*/
package com.chat.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chat.Dao.MessageDao;
import com.chat.pojo.Send;
import com.chat.pojo.User;
import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * @ClassName: SendController
 * @Description:
 * @author LJL
 * @date 2018/03/31 16:31:00
 *
 */
public class SendController extends HttpServlet {

    /**
    	 * Constructor of the object.
    	 */
    public SendController() {
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
        response.setCharacterEncoding("UTF-8");
        response.setContentType("charset=UTF-8");
        HttpSession session = request.getSession();
        String content = new String(request.getParameter("content").getBytes("ISO-8859-1"),"utf-8");
        String recevier = new String(request.getParameter("recevier").getBytes("ISO-8859-1"),"utf-8");
        User user = (User)session.getAttribute("user");
        if(user == null){
            response.sendRedirect("index.jsp");
        }else{
            Send send = new Send();
            send.setContent(content);
            send.setRecevier(recevier);
            send.setSender(user.getUsername());
            new MessageDao().send(send);
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
