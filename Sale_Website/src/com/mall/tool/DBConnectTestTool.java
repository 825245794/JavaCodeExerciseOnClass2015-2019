package com.mall.tool;

import java.util.List;

import com.mall.dao.impl.DBDao;
import com.mall.entity.UserEntity;

public class DBConnectTestTool {
	public static void searchTest(){
		DBDao db=new DBDao();
		List<UserEntity> list=db.search("select * from m_user" ,UserEntity.class);
		for(UserEntity u:list){
			System.out.println(u.getUsernames());
		}
	}
	
	public static void insertUserTest(){
		DBDao db=new DBDao();
		System.out.println(db.update("insert into m_user values('admin','root','1','admin@qq.com')"));
	}
	public static void insertProductTest(){
		DBDao db=new DBDao();
//		System.out.println(db.update("insert into m_product values('1','360 N5','360手机 N5 全网通','2300','1981','1800','1.jpg')"));
//		System.out.println(db.update("insert into m_product values('2','乐视 S3','乐视 S3 双卡双待','1200','899','700','2.jpg')"));
//		System.out.println(db.update("insert into m_product values('3','vivo X9s','vivo X9s 全网通','2600','2498','1970','3.jpg')"));
//		System.out.println(db.update("insert into m_product values('4','三星 S7 edge','三星 S7 edge 全网通','3600','3399','2970','4.jpg')"));
//		System.out.println(db.update("insert into m_product values('5','AGM X2','AGM X2 全网通','4267','3999','3699','5.jpg')"));
//		System.out.println(db.update("insert into m_product values('6','荣耀 6A','荣耀 畅玩6A 3GB','1200','999','650','6.jpg')"));
//		System.out.println(db.update("insert into m_product values('7','OPPO A77','OPPO A77 4GB','2400','2191','1840','7.jpg')"));
//		System.out.println(db.update("insert into m_product values('8','三星 S8','三星 S8 移动版','6200','5681','5100','8.jpg')"));
//		System.out.println(db.update("insert into m_product values('9','vivo X9s Plus','vivo X9sPlus 全网通','3300','2798','2100','9.jpg')"));
//		System.out.println(db.update("insert into m_product values('10','夏普 AQUOS S2','夏普 S2 全面屏','2800','2499','2100','10.jpg')"));
//		System.out.println(db.update("insert into m_product values('11','小辣椒 4A ','小辣椒 4A 高配版','900','791','410','11.jpg')"));
//		System.out.println(db.update("insert into m_product values('12','魅族 Note6 ','魅族 Note6 3GB','1500','1299','800','12.jpg')"));
//		System.out.println(db.update("insert into m_product values('13','中兴 A520','中兴 520 双4G','400','371','120','13.jpg')"));
//		System.out.println(db.update("insert into m_product values('14','努比亚 Z17','努比亚 Z17 无边框','3300','2799','2300','14.jpg')"));
//		System.out.println(db.update("insert into m_product values('15','Moto Z','Moto Z 4GB','4200','3699','3100','15.jpg')"));
//		System.out.println(db.update("insert into m_product values('16','小米 Note','小米 Note 4GB','2200','1899','1700','16.jpg')"));
//		System.out.println(db.update("insert into m_product values('17','OnePlus 5','OnePlus 5 4GB','3700','3299','3100','17.jpg')"));
		System.out.println(db.update("insert into flower_admintable values('admin','admin')"));
		
	}
	
	public static void singleResultsetTest(){
		DBDao db=new DBDao();
		db.singleResultset("select count(*) from m_user");
	}
	public static void insertCartTest(){
		DBDao db = new DBDao();
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','1','4')"));
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','2','5')"));
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','3','6')"));
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','4','7')"));
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','5','8')"));
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','6','9')"));
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','7','2')"));
		System.out.println(db.update("insert into m_cart (email,productid,quantity) values('admin@qq.com','8','12')"));
	}
	public static void main(String[] args) {
		//insertUserTest();
		insertProductTest();
		//singleResultsetTest();
		//insertCartTest();
	}
}
