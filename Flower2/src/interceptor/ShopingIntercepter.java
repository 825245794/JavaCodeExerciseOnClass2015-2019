package interceptor;

import java.util.Map;

import javax.swing.JOptionPane;

import com.opensymphony.xwork2.*;
import com.opensymphony.xwork2.interceptor.Interceptor;

import entity.User;


public class ShopingIntercepter implements Interceptor{

	public void destroy() {
		// TODO Auto-generated method stub
	}
	public void init() {
		// TODO Auto-generated method stub
	}
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		
				ActionContext ctp=ActionContext.getContext();
				Map session=ctp.getSession();
				Map request=(Map)ctp.getContext().get("request");
				User user=(User)session.get("user");
				//System.out.println("��ʼ����û�");
				 if(user!=null){
		        	String result=arg0.invoke();
		        	return result;
		        }else{
		        	
		        	JOptionPane.showMessageDialog(null, "登录失败");
		            return "login";
		        }
		}

}
