package second;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class P8_1 extends HttpServlet{
	/**
	 * 
	 */
	String name="",pwd="";
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		name=req.getParameter("name");
		pwd=req.getParameter("pwd");
		jiazai(req,resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		jiazai(req,resp);
		}
	
	public void jiazai(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		resp.setContentType("text/html");
		resp.setCharacterEncoding("GBK");
		PrintWriter out=resp.getWriter();
		out.print("<HTML>");
		out.print("<HEAD><TITLE>学生注册表</TITLE></HEAD>");
		out.print(" <BODY>");
		if("".equals(name)&&"".equals(pwd)){
		out.print("<form action=\"P8_1\" method=\"post\"");
		out.print("<p>登陆：</p><br>");
		out.print("用户名:<input name=\"name\" type=\"text\"><br>");
		out.print("密码:<input name=\"pwd\" type=\"password\"><br>");
		out.print("<input type=\"submit\"><br>");
		out.print("</form>");
		}
		else{
			out.print("欢迎登陆:"+(Integer.parseInt(name)+Integer.parseInt(pwd)));
		}
		out.print(" </BODY>");
		out.print("</HTML>");
		out.flush();
		out.close();
	}
}
