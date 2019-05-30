package action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import comm.CommonUtil;

public class Admin_NoticeAction extends ActionSupport{
 private String	ntitle;
 private String	ndetail;
public String getNtitle() {
	return ntitle;
}
public void setNtitle(String ntitle) {
	this.ntitle = ntitle;
}
public String getNdetail() {
	return ndetail;
}
public void setNdetail(String ndetail) {
	this.ndetail = ndetail;
}
 
public String getNotice(){
	String id=CommonUtil.getStringID("N");
	Date date=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-ddHH:mm:ss"); 
	String ntime=sdf.format(date);
	String sql="insert into flower_noticetbale values(?,?,?,?)";
	Object[] param={id,ntitle,ndetail,ntime};
	
	return SUCCESS;
}

}
