package Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class SelectMno extends ActionSupport{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String city;
private String mno;
private String type;
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public HttpServletRequest request=ServletActionContext.getRequest();;
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getMno() {
	return mno;
}
public void setMno(String mno) {
	this.mno = mno;
}
@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if("".equals(city)||"".equals(mno)) {return "ERROR";}
		else{
			request.setAttribute("city", city);
			request.setAttribute("mno", mno);
			return type;
		}
	}
}
