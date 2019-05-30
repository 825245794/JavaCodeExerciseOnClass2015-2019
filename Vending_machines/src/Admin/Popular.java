package Admin;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class Popular extends ActionSupport{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public HttpServletRequest request=ServletActionContext.getRequest();
ResultSet drink=null;
ResultSet minfo=null;
ResultSet mmno=null;

public void database(){
	try{
	NormalSQL sql=new NormalSQL();
	NormalSQL sqll=new NormalSQL();
	
	List<save_popular> list=new ArrayList<save_popular>();
	mmno=sql.searchSQL("select mno from machine");
	while(mmno.next()){
		save_popular save=new save_popular();
		save.setMno(mmno.getString("mno"));
		
		ResultSet minfo=sqll.searchSQL("select path,dname from drink where dno  in(select dno from machineinfo where hassell in(select  max(cast(hassell as unsigned int)) from machineinfo where mno=\""+mmno.getString("mno")+"\") and mno=\""+mmno.getString("mno")+"\")");
		while(minfo.next()){
			save.setDname(minfo.getString("dname"));
			save.setPath(minfo.getString("path"));
		}
		list.add(save);
		sqll.close();
	}
	sql.close();
	mmno.close();
	request.setAttribute("list", list);
	}catch(Exception e){
		e.printStackTrace();
	}
}
@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		database();
		return "SUCCESS";
	
	}
}
