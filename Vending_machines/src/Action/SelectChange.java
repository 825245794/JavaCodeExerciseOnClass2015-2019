package Action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Vector;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpUpgradeHandler;
import javax.servlet.http.Part;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class SelectChange extends ActionSupport implements HttpServletRequest{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String select;
	private String type;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public HttpServletRequest request=ServletActionContext.getRequest();;//声明request请求对象
	public HttpServletResponse response;//声明response请求对象
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
		
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if("".equals(select)||select==null){//如果获取城市失败，就ERROR
			return "ERROR";}
		else{
		Vector<String> v1=new Vector<String>();//声明一个数组
		ResultSet rs =null;
		//System.out.println(select);
		try{
			NormalSQL sql=new NormalSQL();
			rs=sql.searchSQL("select mno from machine where city=\""+select+"\"");//通过选择城市筛选出该地区的机器编号
			while(rs.next()){
				v1.add(rs.getString("mno"));//把该地区的所有机器遍都加入Vector数组
			}
			rs.close();
			sql.close();
		}catch(SQLException e){
			e.printStackTrace();
		}

		request.setAttribute("citynew", select);//设置城市名为 citynew
		request.setAttribute("vectormno", v1);
	//	request.getRequestDispatcher("SelectMno.jsp").forward(request, response);
		return "change";
	}
}
	@Override
	public Object getAttribute(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Enumeration getAttributeNames() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getCharacterEncoding() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getContentLength() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String getContentType() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ServletInputStream getInputStream() throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getLocalAddr() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getLocalName() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getLocalPort() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public Enumeration getLocales() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getParameter(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Map getParameterMap() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Enumeration getParameterNames() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String[] getParameterValues(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getProtocol() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public BufferedReader getReader() throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getRealPath(String path) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getRemoteAddr() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getRemoteHost() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getRemotePort() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public RequestDispatcher getRequestDispatcher(String path) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getScheme() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getServerName() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getServerPort() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public boolean isSecure() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public void removeAttribute(String name) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void setAttribute(String name, Object o) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void setCharacterEncoding(String env) throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		
	}
	@Override
	public String getAuthType() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getContextPath() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Cookie[] getCookies() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public long getDateHeader(String name) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String getHeader(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Enumeration getHeaderNames() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Enumeration getHeaders(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getIntHeader(String name) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String getMethod() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getPathInfo() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getPathTranslated() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getQueryString() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getRemoteUser() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getRequestURI() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public StringBuffer getRequestURL() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getRequestedSessionId() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getServletPath() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public HttpSession getSession() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public HttpSession getSession(boolean create) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Principal getUserPrincipal() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean isRequestedSessionIdFromCookie() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean isRequestedSessionIdFromURL() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean isRequestedSessionIdFromUrl() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean isRequestedSessionIdValid() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean isUserInRole(String role) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public AsyncContext getAsyncContext() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public long getContentLengthLong() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public DispatcherType getDispatcherType() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ServletContext getServletContext() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean isAsyncStarted() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean isAsyncSupported() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public AsyncContext startAsync() throws IllegalStateException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public AsyncContext startAsync(ServletRequest arg0, ServletResponse arg1) throws IllegalStateException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean authenticate(HttpServletResponse arg0) throws IOException, ServletException {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public String changeSessionId() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Part getPart(String arg0) throws IOException, ServletException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Collection<Part> getParts() throws IOException, ServletException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void login(String arg0, String arg1) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void logout() throws ServletException {
		// TODO Auto-generated method stub
		
	}
	@Override
	public <T extends HttpUpgradeHandler> T upgrade(Class<T> arg0) throws IOException, ServletException {
		// TODO Auto-generated method stub
		return null;
	}
}