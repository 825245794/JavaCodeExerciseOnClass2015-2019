package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class GetDrink extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public HttpServletRequest request=ServletActionContext.getRequest();
@Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	try{
		NormalSQL sql=new NormalSQL();
		ResultSet rs=sql.searchSQL("select * from drink");
		List<drink> list=new ArrayList<drink>();
		while(rs.next()){
			drink drink=new drink();
			drink.setDNO(rs.getString("DNO"));
			drink.setDNAME(rs.getString("DNAME"));
			drink.setPATH(rs.getString("PATH"));
			list.add(drink);
		}
		NormalSQL sqll=new NormalSQL();
		ResultSet rss=sqll.searchSQL("select count(mno) from machine");
		rss.next();
		String mno=String.valueOf(100000+Integer.parseInt(rss.getString("count(mno)"))+1);
		request.setAttribute("list", list);
		request.setAttribute("mno", mno);
		rs.close();
		sql.close();
		rss.close();
		sqll.close();
		return SUCCESS;
	}catch(SQLException e){
		return "ERROR";
	}
	

}
}
