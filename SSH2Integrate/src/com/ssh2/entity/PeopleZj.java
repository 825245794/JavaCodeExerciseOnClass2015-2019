package com.ssh2.entity;

/**
 * PeopleZj entity. @author MyEclipse Persistence Tools
 */

public class PeopleZj implements java.io.Serializable {

	// Fields

	private Integer id;
	private IdentitycardZj identitycardZj;
	private String name;
	private String sex;
	private Integer age;

	// Constructors

	/** default constructor */
	public PeopleZj() {
	}

	/** minimal constructor */
	public PeopleZj(IdentitycardZj identitycardZj) {
		this.identitycardZj = identitycardZj;
	}

	/** full constructor */
	public PeopleZj(IdentitycardZj identitycardZj, String name, String sex, Integer age) {
		this.identitycardZj = identitycardZj;
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

	public IdentitycardZj getIdentitycardZj() {
		return this.identitycardZj;
	}

	public void setIdentitycardZj(IdentitycardZj identitycardZj) {
		this.identitycardZj = identitycardZj;
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