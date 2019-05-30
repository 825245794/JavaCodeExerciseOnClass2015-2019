package com.mall.entity;

public class User {
private String userid ;
private String 	upass ;
private String 	sex;
private int 	age=0;
private String 	nikename;
private String upic ;
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getUpass() {
	return upass;
}
public void setUpass(String upass) {
	this.upass = upass;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getNikename() {
	return nikename;
}
public void setNikename(String nikename) {
	this.nikename = nikename;
}
public String getUpic() {
	return upic;
}
public void setUpic(String upic) {
	this.upic = upic;
}


}
