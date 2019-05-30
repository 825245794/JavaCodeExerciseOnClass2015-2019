package cc.test.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import cc.test.vo.*;
/**
 * 程序运行的首页
 * 在此对书库内容进行初始化
 * @author Administrator
 *
 */
public final class InitServlet extends HttpServlet {

    /**
     * Constructor of the object.
     */
    public InitServlet() {
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
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        Book[] BookList=null;//获取图书的相关信息
        int num=0;//保存图书的本数
        //当第一次访问采购网页，session对象中还没有book购物车信息时，进行初始化。
        if (session.getAttribute("book")==null){
         //在session对象中存储图书采购信息,也可以换成从数据库中获取
            BookList = new Book[4];
            BookList[0] = new Book("10101", "Java核心技术", "img\\10101.jpg", 0);
            BookList[1] = new Book("10102", "Java经典实例", "img\\10102.jpg", 0);
            BookList[2] = new Book("10103", "Java7", "img\\10103.jpg", 0);
            BookList[3] = new Book("10104", "JSP&Servlet", "img\\10104.jpg",0);
            //存入session对象中
            session.setAttribute("bookList", BookList);
            session.setAttribute("sumNum", String.valueOf(num));
            request.getRequestDispatcher("Shopping.jsp").forward(request, response);
        }
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
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request,response);
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
