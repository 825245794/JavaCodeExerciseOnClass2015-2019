package com.ex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {

	public FormServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String sex=request.getParameter("sex");
		String age=request.getParameter("age");
		String[] fav=request.getParameterValues("fav");
		String xl=request.getParameter("xl");
		String email=request.getParameter("email");
		String jl=request.getParameter("jl");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("");
		out.println("用户注册 <br>");
		out.println("用户名:"+username+"<br>");
		out.println("密码:"+password+"<br>");
		out.println("性别:"+sex+"<br>");
		out.println("年龄:"+age+"<br>");
		String b="";
		for(String s:fav){
			b+=s+",";
		}
		b=b.substring(0, b.lastIndexOf(","));
	    out.println("兴趣:"+b+"<br>");
		out.println("学历:"+xl+"<br>");
	    out.println("邮件地址:"+email+"<br>");
		out.println("简历:"+jl+"<br>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request,response);
	}

	public void init() throws ServletException {
		
	}

}
