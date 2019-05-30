package action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import comm.CommonUtil;

import dao.BaseDao;

import entity.Address;
import entity.User;

public class Admin_AddressAction extends ActionSupport implements SessionAware{
	private Address dress;
	private List<Map<String, Object>> listAddress;  
	public Address getDress() {
		return dress;
	}

	public void setDress(Address dress) {
		this.dress = dress;
	}
	
	//****�����ӵ�ַҳ�湦��********************
	public String getAddress(){
		String sql="select * from flower_addresstable where userid=?";
		User user=(User)session.get("user");
		Object[] param={user.getUserid()};
		listAddress=BaseDao.selectByParam(sql, param);
	    return SUCCESS;   
	}

	//****ʵ����ӵ�ַ����*******************************8
	
	public String addAddress(){
		String sql="insert into flower_addresstable values(?,?,?,?,?,?,?)";
		String id=CommonUtil.getStringID("A");
		User user=(User)session.get("user");
		if(dress.getDef()!=1){
			dress.setDef(0);
		}
		Object[] param={id,user.getUserid(),dress.getTel(),dress.getRealname(),
				dress.getAddress(),dress.getPost(),dress.getDef()};
		boolean b=BaseDao.updateByParam(sql, param);
		   if(b){		 
			 
			JOptionPane.showMessageDialog(null, "Success");
			   return "success";
		   }
		   else
		   {
			   return "error";
		   }
		
	}
	
	
	
	Map<String, Object> session;
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		session=arg0;
	}

}
