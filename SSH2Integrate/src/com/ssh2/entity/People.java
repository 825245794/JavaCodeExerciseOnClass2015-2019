package com.ssh2.entity;

/**
 * People entity. @author MyEclipse Persistence Tools
 */

public class People implements java.io.Serializable {

	// Fields

	private Integer id;
	private Identitycard identitycard;
	private String name;
	private String sex;
	private Integer age;

	// Constructors

	/** default constructor */
	public People() {
	}

	/** full constructor */
	public People(Identitycard identitycard, String name, String sex, Integer age) {
		this.identitycard = identitycard;
		this.name = name;
		this.sex = sex;
		this.age = age;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Identitycard getIdentitycard() {
		return this.identitycard;
	}

	public void setIdentitycard(Identitycard identitycard) {
		this.identitycard = identitycard;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

}