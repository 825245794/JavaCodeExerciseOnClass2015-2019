package Admin;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class income extends ActionSupport {
/**
	 * 
	 */
	ResultSet machineinfo=null;
	ResultSet drink=null;
	public HttpServletRequest request=ServletActionContext.getRequest();
	private static final long serialVersionUID = 1L;
	private String mno;

	public String getMno() {
	return mno;
	}

	public void setMno(String mno) {
	this.mno = mno;
	}
	
	public void database(){
		try{
		double tol=0;
		List<save_income> list=new ArrayList<save_income>();
		NormalSQL sql=new NormalSQL();
		NormalSQL sqll=new NormalSQL();
		machineinfo=sql.searchSQL("select * from machineinfo where mno =\""+mno+"\"");
		drink=sqll.searchSQL("select * from drink where dno in (select dno from machineinfo where mno=\""+mno+"\")");
		while(machineinfo.next()){
			drink.next();
			save_income save=new save_income();
			save.setStock(machineinfo.getString("stock"));
			save.setHassell(machineinfo.getString("hassell"));
			save.setDname(drink.getString("dname"));
			save.setBuy_price(drink.getString("buy_price"));
			save.setSell_price(drink.getString("sell_price"));
			save.setPath(drink.getString("path"));
			save.setDno(machineinfo.getString("dno"));
			save.setCoat(String.valueOf(Double.parseDouble(drink.getString("buy_price").toString())*(Double.parseDouble(machineinfo.getString("hassell").toString())+Double.parseDouble(machineinfo.getString("stock").toString()))));
			save.setTotal( String.valueOf((Double.parseDouble(drink.getString("sell_price").toString())-Double.parseDouble(drink.getString("buy_price").toString()))*Double.parseDouble(machineinfo.getString("hassell").toString()) ));
			tol+=Double.parseDouble(drink.getString("sell_price").toString())*Double.parseDouble(machineinfo.getString("hassell").toString());
			list.add(save);
		}
		sql.close();
		sqll.close();
		drink.close();
		machineinfo.close();
		double coat=0,profit=0;
		//System.out.println(list.get(0).getCoat());
	 	for(int i=0;i<list.size();i++){
	 		coat+=Double.parseDouble(list.get(i).getCoat());
	 		profit+=Double.parseDouble(list.get(i).getTotal());
	 	}
	 	request.setAttribute("coat", coat);
	 	request.setAttribute("tol", tol);
	 	request.setAttribute("profit", profit);
		request.setAttribute("list", list);
		request.setAttribute("mno", mno);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	@Override
		public String execute() throws Exception {
			// TODO Auto-generated method stub
			if("".equals("mno")||mno==null){
				return "ERROR";
			}
			else{
				database();
				return "SUCCESS";
			}
		}

}
