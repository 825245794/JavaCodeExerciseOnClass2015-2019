package second;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("GBK");
		PrintWriter out=response.getWriter();
		out.print("<HTML>");
		out.print("  <HEAD><TITLE>servilet实例</TITLE></HEAD>");
		out.print("  <BODY>");
		out.print("  Servlet实例2   ");
		out.print(this.getClass());
		out.print("  </BODY>");
		out.print("</HTML>");
		out.flush();
		out.close();
	}
}
