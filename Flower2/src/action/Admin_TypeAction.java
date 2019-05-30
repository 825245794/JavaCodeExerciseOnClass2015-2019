package action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import comm.CommonUtil;

import dao.BaseDao;

public class Admin_TypeAction extends ActionSupport{
	private String typeid;
	private String typename;
	private List<Map<String, Object>> listType;
	
	public List<Map<String, Object>> getListType() {
		return listType;
	}
	public void setListType(List<Map<String, Object>> listType) {
		this.listType = listType;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
	public String getType(){
		String sql="select * from flower_typetable";
		listType=BaseDao.selectByParam(sql, null);
		return SUCCESS;
	}
	
	public String addType(){
		if(typename.trim().equals("")){
			return ERROR;
		}else{
			typeid=CommonUtil.getStringID("T");
			String sql="insert into flower_typetable values(?,?)";
			Object[] param={typeid,typename};
			boolean t=BaseDao.updateByParam(sql, param);
			if(t)
				return SUCCESS;
			else
				return ERROR;
			
		}
	}

}
