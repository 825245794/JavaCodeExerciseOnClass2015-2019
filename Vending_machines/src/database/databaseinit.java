package database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import init.NormalSQL;

public class databaseinit extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public databaseinit() {
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
		Object city_spell = null;
		Object mno=null;
		try{
			request.setCharacterEncoding("UTF-8");
			city_spell=request.getParameter("city");
			mno=request.getParameter("mno");
			//System.out.println(mno);
			NormalSQL sql=new NormalSQL();
			ResultSet rs=sql.searchSQL(search_drink(String.valueOf(mno)));
//			ResultSet rsid=stmt1.executeQuery("select mno from machine where spell=\""+city+"\"");
//			rsid.next();
//			o1=rsid.getString("mno").toString();
			NormalSQL sqll=new NormalSQL();
			ResultSet rss=sqll.searchSQL("select stock from machineinfo where mno='"+mno+"'");
			List<drink> list=new ArrayList<drink>();
			while(rs.next()){
				rss.next();
				drink drink=new drink();
				drink.setStock(rss.getString("stock"));
				drink.setDNO(rs.getString("DNO"));
				drink.setDNAME(rs.getString("DNAME"));
				drink.setPATH(rs.getString("PATH"));
				drink.setSell_price(rs.getString("sell_price"));
				list.add(drink);
			}
			request.setAttribute("list", list);
			rs.close();
			sql.close();
		}catch(SQLException e){
			e.printStackTrace();
		}

		request.setAttribute("city", city_spell);
		request.setAttribute("mno",mno);
		request.getRequestDispatcher("main.jsp?cityID="+mno+"").forward(request, response);
		
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
	public String search_drink(String city){
		return "select * from drink where dno in(select dno from machineinfo where mno=\""+city+"\" )";
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
