package com.ssh2.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * IdentitycardZj entity. @author MyEclipse Persistence Tools
 */

public class IdentitycardZj implements java.io.Serializable {

	// Fields

	private Integer id;
	private String cardNo;
	private Set peopleZjs = new HashSet(0);

	// Constructors

	/** default constructor */
	public IdentitycardZj() {
	}

	/** full constructor */
	public IdentitycardZj(String cardNo, Set peopleZjs) {
		this.cardNo = cardNo;
		this.peopleZjs = peopleZjs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCardNo() {
		return this.cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public Set getPeopleZjs() {
		return this.peopleZjs;
	}

	public void setPeopleZjs(Set peopleZjs) {
		this.peopleZjs = peopleZjs;
	}

}