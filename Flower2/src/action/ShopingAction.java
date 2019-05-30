package action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.swing.JOptionPane;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.ACONST_NULL;
import com.sun.org.apache.regexp.internal.recompile;

import comm.CommonUtil;

import dao.BaseDao;

import entity.Address;
import entity.Cart;
import entity.Goods;
import entity.User;

public class ShopingAction extends ActionSupport implements SessionAware {
	// private Goods goods;
	private List<Map<String, Object>> listGoods; // ��Ʒ�б�
	private List<Map<String, Object>> listCart; // ���ﳵ�б�
	private List<Map<String, Object>> listOrder; // �����б�
	private List<Map<String, Object>> listOrderDetail; // ���������
	// private Cart cart;
	// ******ֱ�ӹ���ʱ��Ӧ����Ϣ*************************
	private String cartid;
	private double amount; // ��Ʒ�ܼ�

	// ********��ַ����******************************
	private Address dress;
	private List<Map<String, Object>> listAddress; // ��ַ�б�
	private int addressNum;// �ж��Ƿ���ڵ�ַ

	// ****�ύ����ʱ����Ҫ��Ϣ*******************
	private String gid;
	private int gnum;
	private String addressid;
	private String addressid_choice;
	private String orderid;
	// ****************************************
	private int modle;// *****����ʽ��modle=1��ʾֱ�ӹ���modle=2��ʾ�ӹ��ﳵ����

	// ****��Ʒ������Ϣ*****
	private String grade;
	private String fdetail;

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getFdetail() {
		return fdetail;
	}

	public void setFdetail(String fdetail) {
		this.fdetail = fdetail;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getCartid() {
		return cartid;
	}

	public void setCartid(String cartid) {
		this.cartid = cartid;
	}

	public List<Map<String, Object>> getListOrder() {
		return listOrder;
	}

	public void setListOrder(List<Map<String, Object>> listOrder) {
		this.listOrder = listOrder;
	}

	public List<Map<String, Object>> getListOrderDetail() {
		return listOrderDetail;
	}

	public void setListOrderDetail(List<Map<String, Object>> listOrderDetail) {
		this.listOrderDetail = listOrderDetail;
	}

	public int getModle() {
		return modle;
	}

	public void setModle(int modle) {
		this.modle = modle;
	}

	public List<Map<String, Object>> getListCart() {
		return listCart;
	}

	public String getAddressid_choice() {
		return addressid_choice;
	}

	public void setAddressid_choice(String addressidChoice) {
		addressid_choice = addressidChoice;
	}

	public String getGid() {
		return gid;
	}

	public void setGid(String gid) {
		this.gid = gid;
	}

	public int getGnum() {
		return gnum;
	}

	public void setGnum(int gnum) {
		this.gnum = gnum;
	}

	public String getAddressid() {
		return addressid;
	}

	public void setAddressid(String addressid) {
		this.addressid = addressid;
	}

	public void setListCart(List<Map<String, Object>> listCart) {
		this.listCart = listCart;
	}

	/*
	 * public Cart getCart() { return cart; } public void setCart(Cart cart) {
	 * this.cart = cart; }
	 */
	public int getAddressNum() {
		return addressNum;
	}

	public void setAddressNum(int addressNum) {
		this.addressNum = addressNum;
	}

	public Address getDress() {
		return dress;
	}

	public void setDress(Address dress) {
		this.dress = dress;
	}

	public List<Map<String, Object>> getListAddress() {
		return listAddress;
	}

	public void setListAddress(List<Map<String, Object>> listAddress) {
		this.listAddress = listAddress;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	/*
	 * public Goods getGoods() { return goods; } public void setGoods(Goods
	 * goods) { this.goods = goods; }
	 */
	public List<Map<String, Object>> getListGoods() {
		return listGoods;
	}

	public void setListGoods(List<Map<String, Object>> listGoods) {
		this.listGoods = listGoods;
	}

	// *********��ȡ��Ʒ������Ϣ****************8

	public String getGoodsDetail() {

		String sql = "select * from flower_goodstable where gid=?";
		Object[] param = { gid };
		listGoods = BaseDao.selectByParam(sql, param);
		return "success";

	}

	// ****�����������ť���õ�����ȷ��ҳ��**************

	// ***��õ�ַ�б���ȡĬ�ϵ�ַid���addressid��
	public void getAddressMes() {
		// ******�õ���ַ�б�**********************8
		String sql0 = "select * from flower_addresstable where userid=? order by def desc";
		User user = (User) session.get("user");
		Object[] param0 = { user.getUserid() };
		listAddress = BaseDao.selectByParam(sql0, param0);
		addressNum = listAddress.size();
		// ****��ȡĬ�ϵ�ַid***********************
		if (addressNum > 0) {
			List<Map<String, Object>> listAddressTemp = new ArrayList<Map<String, Object>>();
			String sql2 = "select * from flower_addresstable where userid=? and def=1";
			Object[] param2 = { user.getUserid() };
			listAddressTemp = BaseDao.selectByParam(sql2, param2);
			if (listAddressTemp.size() > 0) {
				addressid = listAddressTemp.get(0).get("addressid").toString();
			}
		}

	}

	// *************ֱ�ӹ���ʱ��ȥ����ȷ��ҳ��********************
	public String getOrderConfirm() {
		// ***��õ�ַ�б���ȡĬ�ϵ�ַid���addressid��
		getAddressMes();
		User user = (User) session.get("user");
		// ***�ѵ�ǰҪ�������Ʒ��ʱ�����ﳵ�д��******
		String sql1 = "insert into flower_carttable values(?,?,?,?)";
		cartid = CommonUtil.getStringID("C");
		Object[] param1 = { cartid, user.getUserid(), gid, gnum };
		BaseDao.updateByParam(sql1, param1);
		// amount=cart.getGnum()*cart.getGnprice();
		amount = 0;
		// ******�ٴӹ��ﳵ���л�ȡ����Ʒ����Ϣ**************************
		String sql2 = "select cartid,gname,gnprice,gpic,gnum from flower_carttable a,flower_goodstable b "
				+ "where a.gid=b.gid and cartid=?";
		Object[] param2 = { cartid };
		listGoods = BaseDao.selectByParam(sql2, param2);
		amount = 0;
		int n = listGoods.size();
		for (int i = 0; i < n; i++) {
			String p = listGoods.get(i).get("gnprice").toString();
			String m = listGoods.get(i).get("gnum").toString();
			amount = amount + Double.parseDouble(p) * Integer.parseInt(m);
		}
		return SUCCESS;

	}
	// *************ֱ�ӹ���ʱ�ٴλ�ö���ȷ��ҳ��********************
	public String getOrderConfirmAgain() {

		// ***��õ�ַ�б���ȡĬ�ϵ�ַid���addressid��
		getAddressMes();
		// ***�ӹ��ﳵ��ȡ����Ʒ******
		String sql2 = "select cartid,gname,gnprice,gpic,gnum from flower_carttable a,flower_goodstable b "
				+ "where a.gid=b.gid and cartid=?";
		Object[] param2 = { cartid };
		listGoods = BaseDao.selectByParam(sql2, param2);
		amount = 0;
		int n = listGoods.size();
		for (int i = 0; i < n; i++) {
			String p = listGoods.get(i).get("gnprice").toString();
			String m = listGoods.get(i).get("gnum").toString();
			amount = amount + Double.parseDouble(p) * Integer.parseInt(m);
		}
		return SUCCESS;

	}

	// ******************��ַ����*********************************************************

	// ****ʵ����ӵ�ַ����*******************************8

	public String addAddress() {
		String sql = "insert into flower_addresstable values(?,?,?,?,?,?,?)";
		String id = CommonUtil.getStringID("A");
		User user = (User) session.get("user");
		if (dress.getDef() == 1) {
			String sql1 = "update flower_addresstable set def=0 where userid=?";
			Object[] param1 = { user.getUserid() };
			BaseDao.updateByParam(sql1, param1);
		} else {
			dress.setDef(0);
		}

		Object[] param = { id, user.getUserid(), dress.getTel(),
				dress.getRealname(), dress.getAddress(), dress.getPost(),
				dress.getDef() };
		boolean b = BaseDao.updateByParam(sql, param);
		if (b) {
			JOptionPane.showMessageDialog(null, "Success");
			return "success";
		} else {
			return "error";
		}

	}

	// *********�õ��޸ĵ�ַҳ��*******************************88
	public String getUpdateAddress() {
		String sql = "select * from flower_addresstable where addressid=?";
		Object[] param = {addressid};
		listAddress = BaseDao.selectByParam(sql, param);
		return SUCCESS;
	}

	
	// *****ʵ���޸ĵ�ַ����ҳ��*******************************
	public String updateAddress() {
		//*****����趨ΪĬ�ϵ�ַ����ȥ����ǰ�趨��Ĭ�ϵ�ַ****
		User user = (User) session.get("user");
		if (dress.getDef() == 1) {
			String sql0 = "update flower_addresstable set def=0 where userid=?";
			Object[] param0 = { user.getUserid() };
			BaseDao.updateByParam(sql0, param0);
		}
		//*********************************88
		String sql = "update flower_addresstable  set tel=?,realname=?,address=?,post=?,def=? where addressid=?";
		Object[] param = {dress.getTel(),dress.getRealname(),dress.getAddress(),dress.getPost(),dress.getDef(),addressid};
		boolean b = BaseDao.updateByParam(sql, param);
		if (b) {
			JOptionPane.showMessageDialog(null, "Success");
			return "success";
		} else {
			return "error";
		}
	}
	// *****ʵ��ɾ����ַ����ҳ��*******************************
	
	
	public String deleteAddress() {
		int n = JOptionPane.showConfirmDialog(null, "ȷ��Ҫɾ����?", "ɾ��",JOptionPane.YES_NO_OPTION);
		if(n==0){
			String sql = "delete from flower_addresstable where addressid=?";
			Object[] param = {addressid};
			BaseDao.updateByParam(sql, param);
				return "success";
		}else{
					return "error";
		}
	}

	Map<String, Object> session;

	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		session = arg0;
	}

	// ********��ȷ�϶���ʱ�޸���Ʒ����****************

	public String updateShopingNum() {

		// ***�ѵ�ǰҪ�������Ʒ��ʱ�����ﳵ�д��******
		String sql1 = "update flower_carttable set gnum=? where cartid=?";
		Object[] param1 = { gnum, cartid };
		BaseDao.updateByParam(sql1, param1);
		return SUCCESS;
	}

	// ******�ύ����**************************88888
	public String orderSubmit() {
		// ***�ж�һ���Ƿ�ѡ�����ջ���ַ�����û�У��򷵻�****
		if (addressid_choice != null && !addressid_choice.equals("")) {

			addressid = addressid_choice;
		}
		if (addressid == null) {
			addFieldError("addressError", "��ѡ���ջ���ַ��");
			return ERROR;
		}
		// *********************************888
		User user = (User) session.get("user");

		// **�ѹ��ﳵ�еĶ�Ӧ��Ϣɾ��****************
		if (modle == 1) {

			BaseDao.doShoping(cartid, user.getUserid(), amount, addressid,
					modle);// �ѹ��ﳵ����Ʒ�Ž�����

			String sql3 = "delete from flower_carttable where cartid=?";
			Object[] param3 = { cartid };
			BaseDao.updateByParam(sql3, param3);
		} else {
			BaseDao.doShoping(null, user.getUserid(), amount, addressid, modle);
			String sql3 = "delete from flower_carttable where userid=?";
			Object[] param3 = { user.getUserid() };
			BaseDao.updateByParam(sql3, param3);
		}

		return SUCCESS;

	}

	// ********************�ȷŽ����ﳵ
	// ����ͨ�����ﳵ����***********************************************88

	public String addCart() {
		User user = (User) session.get("user");
		// ***�ѵ�ǰҪ�������Ʒ��ʱ�����ﳵ�д��******
		String sql1 = "insert into flower_carttable values(?,?,?,?)";
		cartid = CommonUtil.getStringID("C");
		Object[] param1 = { cartid, user.getUserid(), gid, gnum };
		BaseDao.updateByParam(sql1, param1);

		// ***�ٴλ����Ʒ����*******************88
		String sql = "select * from flower_goodstable where gid=?";
		Object[] param = { gid };
		listGoods = BaseDao.selectByParam(sql, param);
		JOptionPane.showMessageDialog(null, "Success");
		return SUCCESS;
	}

	// *******�鿴���ﳵ����************************************

	public String showCart() {
		amount = 0;
		String sql = "select * from flower_carttable a,flower_goodstable b where userid=? and a.gid=b.gid";
		User user = (User) session.get("user");
		Object[] param = { user.getUserid() };
		listCart = BaseDao.selectByParam(sql, param);
		int n = listCart.size();
		for (int i = 0; i < n; i++) {
			String p = listCart.get(i).get("gnprice").toString();
			String num = listCart.get(i).get("gnum").toString();
			amount = amount + Double.parseDouble(p) * Integer.parseInt(num);
		}
		return SUCCESS;

	}

	// *****�ӹ��ﳵ��ɾ��ָ����Ʒ*******************8888
	public String deleteCart() {
		String sql = "delete from flower_carttable where userid=? and cartid=?";
		User user = (User) session.get("user");
		Object[] param = { user.getUserid(), cartid };
		BaseDao.updateByParam(sql, param);
		return SUCCESS;

	}

	// *****����չ��ﳵ*******************8888
	public String deleteAllCart() {
		String sql = "delete from flower_carttable where userid=?";
		User user = (User) session.get("user");
		Object[] param = { user.getUserid() };
		BaseDao.updateByParam(sql, param);
		return SUCCESS;

	}

	  
	// **************************ͨ�����ﳵȷ��***************
	
	
	public String getOrderConfirmCart() {

		// ***��õ�ַ�б���ȡĬ�ϵ�ַid���addressid��
		getAddressMes();
		// ***�ӹ��ﳵ��ȡ����Ʒ******
		String sql1 = "select * from flower_carttable a,flower_goodstable b where userid=? and a.gid=b.gid";
		User user = (User) session.get("user");
		Object[] param1 = { user.getUserid() };
		listGoods = BaseDao.selectByParam(sql1, param1);
		amount = 0;
		int n = listGoods.size();
		for (int i = 0; i < n; i++) {
			String p = listGoods.get(i).get("gnprice").toString();
			String num = listGoods.get(i).get("gnum").toString();
			amount = amount + Double.parseDouble(p) * Integer.parseInt(num);
		}
		return SUCCESS;
	}

	// ��ò鿴����ҳ��***********************
	public String getShowOrder() {
		String sql = "select * from flower_ordertable where userid=? order by otime desc";
		User user = (User) session.get("user");
		Object[] param = { user.getUserid() };
		listOrder = BaseDao.selectByParam(sql, param);
		return SUCCESS;
	}

	// ****�鿴��������*****************88
	public String getOrderDetail() {
		String sql = "select * from flower_orderdetail a,flower_goodstable b where a.gid=b.gid and orderid=?";
		Object[] param = { orderid };
		listCart = BaseDao.selectByParam(sql, param);
		return SUCCESS;
	}

	// ******�޸Ķ���״̬Ϊ���ջ�***********************
	public String goodsGet() {

		String sql = "update flower_ordertable set status=? where orderid=?";
		Object[] param = { "���ջ�", orderid };
		BaseDao.updateByParam(sql, param);
		return "success";
	}

	// ****ɾ������************************

	public String deleteOrder() {
		String sql = "delete from flower_ordertable  where orderid=?";
		String sql1 = "delete from flower_orderdetail where orderid=?";
		Object[] param = { orderid };

		BaseDao.updateByParam(sql1, param);// ****ɾ����������
		BaseDao.updateByParam(sql, param);// ****ɾ������
		JOptionPane.showMessageDialog(null, "Success");
		return "success";
	}

	// ****��������*************************88
	public String comment() {

		String sql = "insert into flower_focustable values(?,?,?,?,?)";

		String fid = CommonUtil.getStringID("F");
		User user = (User) session.get("user");

		Object[] param = { fid, gid, user.getUserid(), grade, fdetail };
		boolean b = BaseDao.updateByParam(sql, param);
		if (b) {

			JOptionPane.showMessageDialog(null, "Success");
			return "success";
		} else {
			return "error";
		}
	}

	// ***********���¹��ﳵ�е���Ʒ����****************88

}
