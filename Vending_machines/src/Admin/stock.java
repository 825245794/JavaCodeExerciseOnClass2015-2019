package Admin;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class stock extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String city;
	private String mno;
	public HttpServletRequest request=ServletActionContext.getRequest();
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
	public void database(){
		try{
		ResultSet rs =null;
		ResultSet rss =null;
		ResultSet rsss =null;
		NormalSQL sql=new NormalSQL();
		rs=sql.searchSQL("select * from drink where dno in(select dno from machineinfo where mno=\""+mno+"\")");
		NormalSQL sqll=new NormalSQL();
		rss=sqll.searchSQL("select * from machineinfo where mno=\""+mno+"\"");
		NormalSQL sqlll=new NormalSQL();
		rsss=sqlll.searchSQL("select dno from machineinfo where mno=\""+mno+"\"");
		List<save_stock> list=new ArrayList<save_stock>();
		while(rs.next()){
			rss.next();
			rsss.next();
			save_stock save=new save_stock();
			save.setStock(rss.getString("stock"));
			save.setHassell(rss.getString("hassell"));
			save.setDname(rs.getString("dname"));
			save.setBuy_price(rs.getString("buy_price"));
			save.setSell_price(rs.getString("sell_price"));
			save.setPath(rs.getString("path"));
			save.setDno(rsss.getString("dno"));
			list.add(save);
		}
		sql.close();
		sqll.close();
		sqlll.close();
		rs.close();
		rss.close();
		rsss.close();
		request.setAttribute("list", list);
		request.setAttribute("mno", mno);
	}catch(Exception e){
		e.printStackTrace();
	}
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if("".equals(city)||"".equals(mno)) {return "ERROR";}
		else{
			database();
			return "SUCCESS";
		}
	}
}
