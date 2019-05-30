package mypackage;
import com.opensymphony.xwork2.ActionSupport;

public class GreetingAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String execute()throws Exception{
		if(username==null||"".equals(username)){
			return ERROR;
		}else{
			return SUCCESS;
		}
	}
	

}
