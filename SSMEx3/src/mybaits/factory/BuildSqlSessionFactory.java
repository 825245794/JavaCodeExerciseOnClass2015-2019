/**  
* @Title: BuildSqlSessionFactory.java
* @Package mybaits
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年2月5日 下午8:14:06
* @version V1.0  
*/
package mybaits.factory;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mybaits.entity.Shop;
import mybaits.entity.ShopMapper;

/**
 * @ClassName: BuildSqlSessionFactory
 * @Description:
 * @author LJL
 * @date 2018/02/05 20:14:06
 *
 */
public class BuildSqlSessionFactory {
    
    public static void insert(){
        SqlSessionFactory SqlSessionFactory = null;
        String resource = "mybatis-config.xml";
        SqlSession sqlSession = null;
        InputStream inputStream;
        try {
            inputStream = Resources.getResourceAsStream(resource);
            SqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            sqlSession = SqlSessionFactory.openSession();
            ShopMapper shopMapper = sqlSession.getMapper(ShopMapper.class);
            Shop shop = new Shop();
            shop.setShopname("hamburger");
            Integer result = shopMapper.insert(shop);
            System.out.println(result);
            sqlSession.commit();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            sqlSession.rollback();
        }finally {
            if(sqlSession != null)
                sqlSession.close();
        }
    }
    
    public static void openSqlSessionFactory(){
        SqlSessionFactory SqlSessionFactory = null;
        String resource = "mybatis-config.xml";
        SqlSession sqlSession = null;
        InputStream inputStream;
        try {
            inputStream = Resources.getResourceAsStream(resource);
            SqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            sqlSession = SqlSessionFactory.openSession();
            ShopMapper shopMapper = sqlSession.getMapper(ShopMapper.class);
            Shop shop = shopMapper.getProduct(18);
            System.out.println(shop.getShopname());
            sqlSession.commit();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            sqlSession.rollback();
        }finally {
            if(sqlSession != null)
                sqlSession.close();
        }
    }
    /**
    * @Title: main
    * @Description: 
    * @param @param args
    * @return void 
    * @throws
    */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
//        SqlSessionFactory SqlSessionFactory = null;
//        String resource = "mybatis-config.xml";
//        InputStream inputStream;
//        try {
//            inputStream = Resources.getResourceAsStream(resource);
//            SqlSessionFactory =
//                    new SqlSessionFactoryBuilder().build(inputStream);
//        } catch (Exception e) {
//            // TODO: handle exception
//            e.printStackTrace();
//        }
//        openSqlSessionFactory();
        insert();
    }

}
