package Admin;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;

public class machine extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mno;
	private String city;
	private String spell;
	private String select[];
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSpell() {
		return spell;
	}
	public void setSpell(String spell) {
		this.spell = spell;
	}
	public String[] getSelect() {
		return select;
	}
	public void setSelect(String[] select) {
		this.select = select;
	}
	public void database(){
		NormalSQL sql=new NormalSQL();
		sql.ChangeSQL("insert into machine values('"+mno+"','"+city+"','"+spell+"')");
		for(int i=0;i<select.length;i++){
			NormalSQL sqll=new NormalSQL();
			sql.ChangeSQL("insert into machineinfo values(\""+mno+"\",'"+select[i]+"','0','0')");
		}
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		database();
		return SUCCESS;
	}
}
