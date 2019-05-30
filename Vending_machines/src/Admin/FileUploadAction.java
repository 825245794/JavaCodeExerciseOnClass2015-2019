package Admin;

	import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.ResultSet;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import init.NormalSQL;
	public class FileUploadAction extends ActionSupport{
	private static final long serialVersionUID = 572146812454l ;
	private static final int BUFFER_SIZE = 16 * 1024 ;//设置缓存最大值，超过最大值会导致图片破损
	//注意，文件上传时<s:file/>同时与myFile，myFileContentType,myFileFileName绑定
	//所以同时要提供myFileContentType,myFileFileName的set方法
	private File myFile; //上传文件
	private String fileName; //获得页面上传的文件名
	private String imageFileName;//合成文件名
	private String name;//获得页面的商品名字
	private String buy;//获得页面的进货价格
	private String sell;//获得页面的出售价格
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBuy() {
		return buy;
	}
	public void setBuy(String buy) {
		this.buy = buy;
	}
	public String getSell() {
		return sell;
	}
	public void setSell(String sell) {
		this.sell = sell;
	}
	
	public void setMyFileFileName(String fileName) {
	this .fileName = fileName;
	}
	public void setMyFile(File myFile) {
	this .myFile = myFile;
	}
	public String getImageFileName() {
	return imageFileName;
	}
	private static void copy(File src, File dst) {//copy(要上传的文件路径，要储存的文件路径) 当调用此方法时src=要上传的文件路径，dst=要储存的文件路径
	try {
	InputStream in = null ;//输入流
	OutputStream out = null ;//输出流
	try {
	in = new BufferedInputStream( new FileInputStream(src), BUFFER_SIZE);//输入流指向要上传的文件输入
	out = new BufferedOutputStream( new FileOutputStream(dst), BUFFER_SIZE);//输出流指向要储存的文件的路径
	byte [] buffer = new byte [BUFFER_SIZE];//设置字节流大小
	while (in.read(buffer) > 0 ) {//循环把要上传的文件转化为字节，储存在字节流当中
	out.write(buffer);//一个一个字节写入要储存的文件路径
	}
	} finally {
	if ( null != in) {
	in.close();
	}
	if ( null != out) {
	out.close();
	}
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}
	private static String getExtention(String fileName) {//获得文件后缀名 （如a.jpg，则后缀名为.jpg）
	int pos = fileName.lastIndexOf(".");//用于定位到最后一个 ‘.’ 的位置，并把位置储存到pos里
	return fileName.substring(pos);//返回后缀名，substring（）代表把 ‘.’ 后面的所有字母都截取下来，包括‘.’
	}
	public String getcount(){//自动给新增饮料编号
		try{
		String a=null;
		NormalSQL sql= new NormalSQL();
		ResultSet rs=sql.searchSQL("select count(DNO) from drink");//获得当前饮料有多少种，（如当前饮料有14种，则把14储存到rs中）
		rs.next();
		a=String.valueOf(Integer.parseInt(rs.getString("count(DNO)").toString())+1);//把rs得到的结果加1则为新增饮料编号，储存到a中
		return a;//返回a
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	public void database(String file){//访问数据库
		NormalSQL sql=new NormalSQL();
		sql.ChangeSQL("insert into drink values('"+Integer.parseInt(getcount())+1+"', '"+name+"', '"+file+"', '"+buy+"','"+sell+"')");//向数据库写入新增饮料信息
	}
	@Override
	public String execute() {
	imageFileName = getcount()+ getExtention(fileName);//合并上传文件的名字，首先getcount（）获得新增饮料的编号，然后用getExtention（）获得后缀名，最后把新增饮料到后缀名合并，成为新的文件名
	File imageFile = new File(ServletActionContext.getServletContext().getRealPath("/img" ) + "/" + imageFileName);//写入要把上传的图片储存的位置，ServletActionContext.getServletContext().getRealPath("/img" )，获得项目内img文件夹的真实位置，并用合并后的名字作为上传文件的新名字
	copy(myFile, imageFile);//调用copy方法实现把上传文件放到img文件夹内
	database("img/"+imageFileName);//调用数据库方法，把新增饮料信息插入数据库
	return SUCCESS;
	}
	}

