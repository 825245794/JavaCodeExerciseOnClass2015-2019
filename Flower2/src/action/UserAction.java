package action;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.swing.JOptionPane;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.BaseDao;

import entity.User;

public class UserAction extends ActionSupport implements SessionAware{
	private User user;
	private List<Map<String, Object>> listUser;
	
	private String repass;
	
	private String guser;  //��Ʒ����
	
	//************������Ʒ�б�******
	private List<Map<String, Object>> listhot;   //�Ƽ���Ʒ�б�
	private List<Map<String, Object>> listxh;   //�ʻ���Ʒ�б�
	private List<Map<String, Object>> listky;   //��ҵ������Ʒ�б�
	private List<Map<String, Object>> listlh;   //�ʻ������Ʒ�б�
	private List<Map<String, Object>> listlm;   //���������Ʒ�б�
	private List<Map<String, Object>> listkt;   //��ͨ������Ʒ�б�
	
	private List<Map<String, Object>> listGoods;   //��Ʒ�б�
	
	
	
	
	
	public String getGuser() {
		return guser;
	}
	public void setGuser(String guser) {
		this.guser = guser;
	}
	public List<Map<String, Object>> getListGoods() {
		return listGoods;
	}
	public void setListGoods(List<Map<String, Object>> listGoods) {
		this.listGoods = listGoods;
	}
	public List<Map<String, Object>> getListhot() {
		return listhot;
	}
	public void setListhot(List<Map<String, Object>> listhot) {
		this.listhot = listhot;
	}
	public List<Map<String, Object>> getListxh() {
		return listxh;
	}
	public void setListxh(List<Map<String, Object>> listxh) {
		this.listxh = listxh;
	}
	public List<Map<String, Object>> getListky() {
		return listky;
	}
	public void setListky(List<Map<String, Object>> listky) {
		this.listky = listky;
	}
	public List<Map<String, Object>> getListlh() {
		return listlh;
	}
	public void setListlh(List<Map<String, Object>> listlh) {
		this.listlh = listlh;
	}
	public List<Map<String, Object>> getListlm() {
		return listlm;
	}
	public void setListlm(List<Map<String, Object>> listlm) {
		this.listlm = listlm;
	}
	public List<Map<String, Object>> getListkt() {
		return listkt;
	}
	public void setListkt(List<Map<String, Object>> listkt) {
		this.listkt = listkt;
	}
	
	
	
	public String getRepass() {
		return repass;
	}

	public void setRepass(String repass) {
		this.repass = repass;
	}

	public List<Map<String, Object>> getListUser() {
		return listUser;
	}

	public void setListUser(List<Map<String, Object>> listUser) {
		this.listUser = listUser;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	
	public void validateRegist() {
		
		if(user.getUpass()==null || !user.getUpass().equals(repass)){
			addFieldError("pass", "请先登录");
		}
	}
//�û�ע��********************************8
	public String regist(){
		
		String  sql="insert into flower_usertable values(?,?,?,?,?,?)";
		Object[] param={user.getUserid(),user.getUpass(),user.getSex(),user.getAge(),user.getNikename(),user.getUpic()};
		boolean t=BaseDao.updateByParam(sql, param);
		if(t){
			JOptionPane.showMessageDialog(null, "Success");
			return SUCCESS;
		}else{
			addFieldError("tip", "Fail");
			return INPUT;
		}
			
	}
	
	
	
	//***********�û���¼**************
	public String login(){
		
		String sql="select * from flower_usertable where userid=? and upass=?";
		Object[] param={user.getUserid(),user.getUpass()};		
		listUser=BaseDao.selectByParam(sql, param);
		if(listUser.size()>0){
			session.put("user", user);
			getAllKinds();
			return SUCCESS;
		}else{
			addFieldError("tip", "Fail");
			return ERROR;
		}
		
		
	}
	Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		session=arg0;
	}
	//*******�˳�ϵͳ********************
	public String exit(){
		session.remove("user");
		getAllKinds();
		return SUCCESS;
	}
	
	//*******�οͷ���********************
	public String main(){
		getAllKinds();
		return SUCCESS;
	}
	
	
	//****��ȡ�Ƽ���Ʒ��Ϣ***********************
	public void getRecommentGoods(){
	 String sql="select * from flower_goodstable where recomment=?";
   		Object[] param1={"yes"};
   		listhot=BaseDao.selectByParam(sql, param1);
		
	}
	//****��ȡ�ʻ���Ʒ******************8
	public void getXhGoods(){
		String sql="select * from flower_goodstable where guser=?";
  		 Object[] param2={"大屏手机"};
  		listxh=BaseDao.selectByParam(sql, param2);
		
	}
	
	
	public void getAllKinds(){
		 String sql0="select * from flower_goodstable where recomment=? order by gid desc";
	   		Object[] param0={"yes"};
	   		listhot=BaseDao.selectByParam(sql0, param0);
   	    //****��ȡ�ʻ���Ʒ
   		String sql="select * from flower_goodstable where guser=? order by gid desc";
   		 Object[] param2={"拍照手机"};
   		listxh=BaseDao.selectByParam(sql, param2);
   	     //****��ȡ��ҵ������Ʒ
  		
  		 Object[] param3={"大屏手机"};
  		listky=BaseDao.selectByParam(sql, param3);
  		 //****��ȡ�ʻ������Ʒ
 		
 		 Object[] param4={"旗舰手机"};
 		 listlh=BaseDao.selectByParam(sql, param4);
 		 //****��ȡ���������Ʒ
 		
 		 Object[] param5={"音乐手机"};
 		 listlm=BaseDao.selectByParam(sql, param5);
 		 //****��ȡ��ͨ������Ʒ
 		
 		 Object[] param6={"指纹手机"};
 		 listkt=BaseDao.selectByParam(sql, param6);
 		 
   	}
	
	//***�õ�������Ʒ����ʾҳ��**********************
	
	public String showGoods(){
		String sql="select * from flower_goodstable where guser=?";
		
		
		try {
			guser = new String(guser.getBytes("ISO-8859-1"),"UTF-8");// ���������������
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

 		 Object[] param2={guser};
 		listGoods=BaseDao.selectByParam(sql, param2);
 		return SUCCESS;
		
	}
	
	//*****���ʻ�********************8
	public String i18n(){
		
			 return SUCCESS;	
			
		}
}
