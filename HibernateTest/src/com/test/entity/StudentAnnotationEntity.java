package com.test.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tutor_student",catalog="tutor")
public class StudentAnnotationEntity implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int student_key;
	String student_account;
	String student_password;
	String student_introduce;
	String student_sex;
	String student_age;
	String student_name;
    byte student_status;
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="student_key")
	public int getStudent_key() {
		return student_key;
	}
	public void setStudent_key(int student_key) {
		this.student_key = student_key;
	}
	@Column(name="student_account")
	public String getStudent_account() {
		return student_account;
	}
	public void setStudent_account(String student_account) {
		this.student_account = student_account;
	}
	@Column(name="student_password")
	public String getStudent_password() {
		return student_password;
	}
	public void setStudent_password(String student_password) {
		this.student_password = student_password;
	}
	@Column(name="student_introduce")
	public String getStudent_introduce() {
		return student_introduce;
	}
	public void setStudent_introduce(String student_introduce) {
		this.student_introduce = student_introduce;
	}
	@Column(name="student_sex")
	public String getStudent_sex() {
		return student_sex;
	}
	public void setStudent_sex(String student_sex) {
		this.student_sex = student_sex;
	}
	@Column(name="student_age")
	public String getStudent_age() {
		return student_age;
	}
	public void setStudent_age(String student_age) {
		this.student_age = student_age;
	}
	@Column(name="student_name")
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	@Column(name="student_status")
	public byte getStudent_status() {
		return student_status;
	}
	public void setStudent_status(byte student_status) {
		this.student_status = student_status;
	}
}
