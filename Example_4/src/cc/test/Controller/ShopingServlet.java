package cc.test.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import cc.test.vo.Book;

public class ShopingServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Book[] bookList=null;
        HttpSession session=request.getSession();
		int bookNum=0;
		int sumNum=Integer.parseInt(session.getAttribute("sumNum").toString());
			
		//获取从Shopping.jsp传来的request对象中的ID号
		String id = request.getParameter("id").toString();
		
        //在ID号不为空的情况下，获取Session对象中的购物车信息，并将信息保存在Book数组。
		try{
		    bookList = (Book[])session.getAttribute("bookList");
			if (bookList!=null){
		//找到数组中与ID对应的Book对象，将其属性bookNum数字加1
			    for(int i=0;i<bookList.length;i++){
			        if(bookList[i].getBookId().equals(id))
			            bookList[i].setBookNum(bookList[i].getBookNum()+1);
			    }
			    
		    	}
		//将数组写回session对象中去。
		    	session.setAttribute("sumNum", sumNum+1);
	            session.setAttribute("bookList", bookList);
	            request.getRequestDispatcher("Shopping.jsp").forward(request, response);
		
		}catch(Exception ex){
			ex.printStackTrace();
		}
		//跳转回Shopping.jsp
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

	

}
