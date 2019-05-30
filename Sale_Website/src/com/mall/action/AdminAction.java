package com.mall.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.mall.dao.util.BaseDao;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.regexp.internal.recompile;

public class AdminAction extends ActionSupport implements SessionAware{
	private String adminid;
	private String apass;
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getApass() {
		return apass;
	}
	public void setApass(String apass) {
		this.apass = apass;
	}
	public String login(){
		String sql="select * from flower_admintable where adminid=? and apass=?";
		Object[] param={adminid,apass};
		 List<Map<String, Object>> list;
		list=BaseDao.selectByParam(sql, param);
		if(list.size()>0){
			session.put("admin", adminid);
			return SUCCESS;
		}else{
			addFieldError("tip", "���������Ϣ����");
			return ERROR;
		}
		
		
	}
	
	Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		session=arg0;
	}
	
	//***�˳�ϵͳ*******
	public String exit(){
		session.remove("admin");
		return SUCCESS;
	}

}
