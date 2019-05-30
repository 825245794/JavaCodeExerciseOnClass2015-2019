/**  
* @Title: ShopMapper.java
* @Package mybaits.entity
* @Description: TODO(用一句话描述该文件做什么)
* @author A18ccms A18ccms_gmail_com  
* @date 2018年2月5日 下午10:14:17
* @version V1.0  
*/
package mybaits.entity;

import java.util.List;

/**
 * @ClassName: ShopMapper
 * @Description:
 * @author LJL
 * @date 2018/02/05 22:14:17
 *
 */
public interface ShopMapper {
    public Shop getProduct(Integer id);
    public int insert(Shop shop);
    public int update(Shop shop);
    public int delete(Integer id);
    public List<Shop> findAll();
}
