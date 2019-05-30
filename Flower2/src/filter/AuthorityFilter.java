package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;


public class AuthorityFilter implements Filter {
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain doChain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)res;
		HttpSession session=request.getSession();
		String admin=(String)session.getAttribute("admin");
		if(admin==null){
			String path=request.getServletPath();
			if(path.endsWith("login.jsp") || path.endsWith("login")){
				doChain.doFilter(req, res);
			}else{
				response.sendRedirect("login.jsp");
			}
		}
		else{
			doChain.doFilter(req, res);
		}
	}
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
}
