package com.mall.dao.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mall.comm.CommonUtil;

import com.mall.entity.Cart;
import com.mall.entity.User;

public class BaseDao {
	static List<Connection> list = new ArrayList<Connection>();

	public synchronized static Connection getConnection() throws Exception {
		if (list.size() > 0) {
			return list.remove(0);
		} else {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			for (int i = 0; i < 10; i++) {
				Connection conn = null;
				conn = DriverManager.getConnection(
						new DBUtil().getUrl(), new DBUtil().getUsername(),
						new DBUtil().getPassword());
				list.add(conn);
			}
			return list.remove(0);

		}
	}

	public static void close(Connection conn) {
		if (conn != null) {
			list.add(conn);
		}
	}

	public static void close(PreparedStatement ps) throws Exception {
		if (ps != null) {
			ps.close();
		}
	}

	public static void close(ResultSet set) throws Exception {
		if (set != null) {
			set.close();
		}
	}

	public static void close(Connection conn, PreparedStatement ps,
			ResultSet set) throws Exception {
		close(conn);
		close(ps);
		close(set);
	}

	/*
	 * sql璇彞琛ㄧず瑕佹墽琛岀殑鎿嶄綔璇彞 param 琛ㄧず缁檚ql璇彞涓殑闂彿璧嬪�
	 */
	public static boolean updateByParam(String sql, Object param[]) {
		boolean f = false;
		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			if (param != null) {
				for (int i = 1; i <= param.length; i++) {
					ps.setObject(i, param[i - 1]);
				}
			}
			int n = ps.executeUpdate();
			if (n > 0)
				f = true;
			close(conn, ps, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}

	/*
	 * 参数sql:琛ㄧず鏌ヨ璇彞 * 鍙傛暟锛�param[] 琛ㄧず缁檚ql璇彞涓殑闂彿璧嬪� 杩斿洖鍊硷細List<Map<String
	 * ,Object>> 涓�釜Map瀛樺偍涓�潯璁板綍锛孲tring琛ㄧず璁板綍鐨勫睘鎬э紙濡傦細sno,sname锛夛紝
	 * Object琛ㄧず鎸囧畾璁板綍鐨勫睘鎬у�
	 */
	
/*	{
		List<Map<String, Object>> list=new ArrayList<Map<String,Object>>();
		String sql="select * from goods";
		list=selectByParam(sql,null);
		String sql="select * from student where sex=?，dept=?";
		Object param[]={"男","软件学院"};
		list=selectByParam(sql,param);
		
	}*/
	public static List<Map<String, Object>> selectByParam(String sql,Object param[]){
		List<Map<String, Object>> list1=new ArrayList<Map<String,Object>>();
		Connection conn;
		try {
			conn = getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			if (param != null) {
				for (int i = 1; i <= param.length; i++) {
					ps.setObject(i, param[i - 1]);
				}
			}
			ResultSet set=ps.executeQuery();
			ResultSetMetaData rsmd=set.getMetaData();
			int num=rsmd.getColumnCount();
			while(set.next()){
				Map<String, Object> result=new HashMap<String, Object>();
				for(int i=1;i<=num;i++){
					//System.out.println(rsmd.getColumnName(i));
					//String tem=(String)set.getObject(i);
					//System.out.println(tem);
					result.put(rsmd.getColumnName(i).toLowerCase(), set.getObject(i));
				}
				list1.add(result);
			}
			close(conn, ps, set);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list1;
		
	}
	//*****从购物车中取出商品，并把对应的信息保存进订单和订单详情表中
	
	public static  void doShoping(String cartid,String userid,double amount,String addressid,int m){
		//******	往订单表中写**************************
		//*************************************************
		String sql2="insert into flower_ordertable values(?,?,?,?,?,?)";
		String orderid=CommonUtil.getStringID("O");
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-ddHH:mm:ss"); 
		String stime=sdf.format(date);
        Object[] param2={orderid,userid,amount,"未发货",stime,addressid};
        updateByParam(sql2, param2);
		//********************************************************************
        //****往订单详细表中写入****************
        String sql1;
        String temp;
		Connection conn;
		try {
			conn = getConnection();
			if(m==1){
	        	sql1="select * from flower_carttable where cartid=?";
	        	temp=cartid;
	        }else{
	        	sql1="select * from flower_carttable where userid=?";
	        	temp=userid;
	        }
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, temp);
			ResultSet set=ps.executeQuery();
			String sql3="insert into flower_orderdetail values(?,?,?)";
			String sql4="update flower_goodstable set gsales=gsales+? where gid=?";
	        while(set.next()){
	        	String gid=set.getString(3);
	        	int gnum=set.getInt(4);
	        	//*****实现往订单详情表中写入
	        	Object[] param3={orderid,gid,gnum};
	        	BaseDao.updateByParam(sql3, param3);	
	        	
	        	//****购买商品后对应商品的销量增加****
	        	Object[] param4={gnum,gid};
	        	BaseDao.updateByParam(sql4, param4);	
	        	
	        }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	

}
