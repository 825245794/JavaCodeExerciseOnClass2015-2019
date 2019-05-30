/**  
* @Title: SearchServlet.java
* @Package com.shop.servlet
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月28日 上午9:29:52
* @version V1.0  
*/
package com.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import com.shop.bean.Message;
import com.shop.dao.MessageDAO;

/**
 * @ClassName: SearchServlet
 * @Description:
 * @author LJL
 * @date 2017/11/28 09:29:52
 *
 */
public class SearchServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public SearchServlet() {
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
		String select = request.getParameter("select");
		String value = request.getParameter("value");
	   HttpSessionContext SessCon=   request.getSession(false).getSessionContext();   
		//  HttpSession   Sess   =   SessCon.getSession(SessionId); 
		HttpSession session =request.getSession();
		Cookie []cookie = request.getCookies();
		
		if("default".equals(select)){
			try{
				List<Message> list  = new MessageDAO().findAll();
				request.setAttribute("list", list);
				session.setAttribute("list", list);
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
		}else if("key".equals(select)){
			try{
				List<Message> list = new MessageDAO().findById(value);
				request.setAttribute("list", list);
				session.setAttribute("list", list);
			}catch (Exception e) {
				// TODO: handle exception 
				e.printStackTrace();
			}
		}
		request.getRequestDispatcher("/index.jsp").forward(request, response);
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

doGet(request, response);
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
