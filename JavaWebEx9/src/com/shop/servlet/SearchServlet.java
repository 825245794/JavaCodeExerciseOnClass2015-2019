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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        List<Message> list = new ArrayList<Message>();
		String select = request.getParameter("select");
		String value = request.getParameter("value");
		if("default".equals(select)){
			String sql = "select * from s_shop";
			ResultSet rs = new MessageDAO().find(sql);
			try{
				while(rs.next()){
					Message m = new Message();
					m.setId(rs.getString("id"));
					m.setShopname(rs.getString("shopname"));
					list.add(m);
				}
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
		}else if("key".equals(select)){
			String sql = "select * from s_shop where id='"+value+"'";
			ResultSet rs = new MessageDAO().find(sql);
			try{
				while(rs.next()){
					Message m = new Message();
					m.setId(rs.getString("id"));
					m.setShopname(rs.getString("shopname"));
					list.add(m);
				}
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}else if("mohu".equals(select)){
			String sql = "select * from s_shop where shopname like '%s'";
			ResultSet rs = new MessageDAO().find(String.format(sql, "%"+value+"%"));
			try{
				while(rs.next()){
					Message m = new Message();
					m.setId(rs.getString("id"));
					m.setShopname(rs.getString("shopname"));
					list.add(m);
				}
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}else if("zp".equals(select)){
			String sql = "select * from s_shop order by id asc";
			ResultSet rs = new MessageDAO().find(sql);
			try{
				while(rs.next()){
					Message m = new Message();
					m.setId(rs.getString("id"));
					m.setShopname(rs.getString("shopname"));
					list.add(m);
				}
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}else if("np".equals(select)){
			String sql = "select * from s_shop order by id desc";
			ResultSet rs = new MessageDAO().find(sql);
			try{
				while(rs.next()){
					Message m = new Message();
					m.setId(rs.getString("id"));
					m.setShopname(rs.getString("shopname"));
					list.add(m);
				}
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		request.setAttribute("list", list);
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
