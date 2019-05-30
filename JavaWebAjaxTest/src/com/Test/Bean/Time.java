package com.Test.Bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Time {
String time;

public String getTime() {
	return time;
}

public void setTime(String time) {
	this.time = time;
}
public Time(){
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	this.setTime(df.format(new Date()));
}
}
