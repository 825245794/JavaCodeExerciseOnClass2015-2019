package com.mall.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.naming.CommunicationException;
import javax.swing.JOptionPane;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import com.mall.comm.CommonUtil;
import com.mall.dao.util.BaseDao;
import com.mall.entity.Goods;

public class Admin_GoodsAction extends ActionSupport{
	private Goods goods;
	private List<Map<String, Object>> listType;   //��ȡ��ƷƷ�ֱ�
	private List<Map<String, Object>> listGoods;   //��Ʒ�б�
	
	
	//****��ҳ����****************************************
	private int currpage;  //��ǰҳ��
	private int countpage;  //�ܹ�ҳ��
	//**********************************************
	private String  typename;
	private String   guser;
	private String   gkinds;
	private String recomment;
	   
	
	
	public String getRecomment() {
		return recomment;
	}
	public void setRecomment(String recomment) {
		this.recomment = recomment;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public String getGuser() {
		return guser;
	}
	public void setGuser(String guser) {
		this.guser = guser;
	}
	public String getGkinds() {
		return gkinds;
	}
	public void setGkinds(String gkinds) {
		this.gkinds = gkinds;
	}
	//***********************************************************
	public int getCurrpage() {
		return currpage;
	}
	public void setCurrpage(int currpage) {
		this.currpage = currpage;
	}
	public int getCountpage() {
		return countpage;
	}
	public void setCountpage(int countpage) {
		this.countpage = countpage;
	}
	public List<Map<String, Object>> getListGoods() {
		return listGoods;
	}
	public void setListGoods(List<Map<String, Object>> listGoods) {
		this.listGoods = listGoods;
	}


	//***�ϴ�ͼƬ*****/
	private File upload;
	private String uploadContentName;
	private String uploadFileName;
	
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentName() {
		return uploadContentName;
	}
	public void setUploadContentName(String uploadContentName) {
		this.uploadContentName = uploadContentName;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public List<Map<String, Object>> getListType() {
		return listType;
	}
	public void setListType(List<Map<String, Object>> listType) {
		this.listType = listType;
	}
	public String getAddGoods(){
		String sql="select * from flower_typetable";
		listType=BaseDao.selectByParam(sql, null);
		return SUCCESS;
	}
	
	
	//***�ϴ�ͼƬ*******
	 public void uploadPic(){
		 
		 String realpath = ServletActionContext.getServletContext().getRealPath("/upload");
			File file=new File(realpath);
			if(!file.exists()){
				file.mkdirs();
			}
			File savefile=new File(file,uploadFileName);
			try {
				FileUtils.copyFile(upload, savefile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 }
	   
	
	//*****�����Ʒ**********************
	public String addGoods(){
		//****ʵ���ϴ�ͼƬ****//
		if(uploadFileName!=null && !uploadFileName.trim().equals("")){
		    uploadPic();
		}
		//***************************************
		String gid=CommonUtil.getStringID("G");
		/*String sql="insert into flower_goodstable values(?,?,?,?,?,?,?,?,?,?,?,?)";
		Object param[]={gid,goods.getGname(),goods.getGoprice(),goods.getGnprice(),
				uploadFileName,goods.getGstore(),0,goods.getTypename(),goods.getGuser(),
				goods.getGkinds(),goods.getRecomment(),goods.getGdetaile()};*/
		String sql="insert into flower_goodstable values(?,?,?,?,?,?,?,?,?,?,?)";
		Object param[]={gid,goods.getGname(),goods.getGoprice(),goods.getGnprice(),
				uploadFileName,goods.getGstore(),0,goods.getTypename(),goods.getGuser(),
				goods.getRecomment(),goods.getGdetaile()};
		
		boolean b=BaseDao.updateByParam(sql, param);
		if(b){
			//JOptionPane.showConfirmDialog(null, "��ӳɹ�", "��ʾ", JOptionPane.YES_NO_OPTION); 
			JOptionPane.showMessageDialog(null, "��ӳɹ�");
			return SUCCESS;
		}
		else
			return ERROR; 
		
	}
	//���������Ʒ�б�*****
	public String getAllGoods(){
		/***�����Ʒ����****/
		String sql0="select * from flower_typetable ";
		listType=BaseDao.selectByParam(sql0, null);
	    /******************************/	
	//*******************************************	
		int pagesize=10;
		 List<Map<String, Object>> allGoods=new ArrayList<Map<String,Object>>();
		 listGoods=new ArrayList<Map<String,Object>>();
		String sql="select * from flower_goodstable order by  gid desc";
		allGoods=BaseDao.selectByParam(sql, null);
		
		int gsize=allGoods.size();
		
		countpage=gsize/pagesize;
		if(gsize%pagesize!=0){
			countpage=countpage+1;
		}
		int statnum=(currpage-1)*pagesize;
		
		for(int i=0;i<pagesize ;i++){
			if((statnum+i)==gsize){
				break;
			}
			listGoods.add(allGoods.get(statnum+i));
		}
		return "success";
	}
	
	//���Ҫ�޸ĵ���Ʒ��Ϣ*****
	public String getUpdateGoods(){
		//***�����Ʒ����****/
		String sql0="select * from flower_typetable";
		listType=BaseDao.selectByParam(sql0, null);
	   //******************************/	
		String  sql="select * from flower_goodstable where gid=?";
		Object[] param={goods.getGid()};
		listGoods=BaseDao.selectByParam(sql, param);
		return "success";
	}
	
	//***������Ʒ��Ϣ************//
	public String updateGoods(){
		
		if(uploadFileName!=null && !uploadFileName.trim().equals("")){
			goods.setGpic(uploadFileName);
			//****ʵ���ϴ�ͼƬ****//
		    uploadPic();
		//***************************************
		}
		
	/*	String sql="update flower_goodstable set gname=?,goprice=?,gnprice=?,"
				+ "gpic=?,gstore=?,typename=?,guser=?,gkinds=?, recomment=?,gdetaile=? where gid=?";
		
	   Object[]	param={goods.getGname(),goods.getGoprice(),goods.getGnprice(),goods.getGpic(),
			   goods.getGstore(),goods.getTypename(),goods.getGuser(),goods.getGkinds(),goods.getRecomment(),
			   goods.getGdetaile(),goods.getGid()};*/
		
		String sql="update flower_goodstable set gname=?,goprice=?,gnprice=?,"
			+ "gpic=?,gstore=?,typename=?,guser=?, recomment=?,gdetaile=? where gid=?";
	
   Object[]	param={goods.getGname(),goods.getGoprice(),goods.getGnprice(),goods.getGpic(),
		   goods.getGstore(),goods.getTypename(),goods.getGuser(),goods.getRecomment(),
		   goods.getGdetaile(),goods.getGid()};	
	   boolean b=BaseDao.updateByParam(sql, param);
	   if(b){
		   JOptionPane.showMessageDialog(null, "�޸ĳɹ�");
		   return "success";
	   }
	   else
		   return "error";
	   }
	
	//****��Ʒ��ѯ*****************
	public String selectGoods(){
		//***�����Ʒ����****/
				String sql0="select * from flower_typetable";
				listType=BaseDao.selectByParam(sql0, null);
			   //******************************/	
		String sql="select * from flower_goodstable where 1=1";
		ArrayList<Object> p=new ArrayList<Object>();
		if(goods.getGname()!=null && !goods.getGname().trim().equals("")){
			sql=sql+" and gname like ?";
			p.add("%"+goods.getGname()+"%");
		}
		if(goods.getTypename()!=null && !goods.getTypename().equals("default")){
			sql=sql+" and typename=?";
			p.add(goods.getTypename());
		}
		if(goods.getGuser()!=null && !goods.getGuser().equals("default")){
			sql=sql+" and guser=?";
			p.add(goods.getGuser());
		}
		Object[] param=p.toArray() ;
		listGoods=BaseDao.selectByParam(sql, param);
		if(listGoods!=null) 
		   return "success";
		else
			return "error";
		
	}
	//*****

}
