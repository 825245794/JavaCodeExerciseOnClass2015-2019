package cc.test.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cc.test.vo.Book;

public class CarServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
      /*判断得到session对象中存储的book信息是否为空
		不为空的前提下，读出Book数组中的内容，并将数目大于等于1的图书信息显示在网页上。
	    提示，此处需要输出信息到浏览器端，所以要用到out.print语句。
	  */
	    HttpSession session=request.getSession();
	    Book[] bookList = (Book[])session.getAttribute("bookList");
        System.out.println(bookList.length);
        if (bookList!=null){
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            for(Book book:bookList)
                if(book.getBookNum() != 0)
                out.println("<p>"+book.getBookName()+"    "+book.getBookNum()+"<p>");
            out.flush();
            out.close();
        }
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
