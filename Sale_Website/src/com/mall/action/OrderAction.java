package com.mall.action;

import java.util.List;
import java.util.Map;

import javax.swing.JOptionPane;

import com.opensymphony.xwork2.ActionSupport;
import com.mall.dao.util.BaseDao;
import com.mall.entity.User;

public class OrderAction extends ActionSupport{
	private List<Map<String, Object>> listOrder;   //�����б�
	private List<Map<String, Object>> listOrderDetail;   //���������
	private String orderid;
	
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

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	//��ò鿴����ҳ��***********************
    public String getShowOrder(){
    	String sql="select * from flower_ordertable order by otime desc";
    	listOrder=BaseDao.selectByParam(sql, null);
    	return SUCCESS;
    }
    
   //****�鿴��������*****************88
    public String getOrderDetail(){
    	String sql="select * from flower_orderdetail a,flower_goodstable b where a.gid=b.gid and orderid=?";
    	Object[] param={orderid};
    	listOrderDetail=BaseDao.selectByParam(sql, param);
    	return SUCCESS;
    }
  //******�޸Ķ���״̬Ϊ����***********************
    public String goodsSend(){
    	
    	String sql="update flower_ordertable set status=? where orderid=?";
    	Object[] param={"�ѷ���",orderid};
    	BaseDao.updateByParam(sql, param);
		return "success";
    }
   
    
}
