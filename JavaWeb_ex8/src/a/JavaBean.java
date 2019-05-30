/**  
* @Title: JavaBean.java
* @Package a
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2017年11月21日 上午9:02:50
* @version V1.0  
*/
package a;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName: JavaBean
 * @Description:
 * @author LJL
 * @date 2017/11/21 09:02:50
 *
 */
public class JavaBean {
	ResultSet rs;
	List<String> list = new ArrayList<String>();
    public List<String> getList() {
		return list;
	}
	public void setList(List<String> list) {
		this.list = list;
	}
	public ResultSet getRs() {
		return rs;
	}
	public void setRs(ResultSet rs) {
		this.rs = rs;
	}
	public JavaBean(){
    	String username = "root";
    	String password = "ljlj";
    	try{

        	String url = "jdbc:mysql://localhost:3306/course";  
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = DriverManager.getConnection(url, username, password);;
        	PreparedStatement pre = null;
        	String sql = "select * from course.c_course";
        	pre=conn.prepareStatement(sql);
        	setRs(pre.executeQuery());
        	List<String> lists = new ArrayList<String>();
        	while(rs.next()){
        		lists.add(rs.getString("course_name"));
        	}
        	setList(lists);
        	rs.close();
        	conn.close();
        	pre.close();
    	}catch (Exception e) {
			// TODO: handle exception
		}
    }
}
