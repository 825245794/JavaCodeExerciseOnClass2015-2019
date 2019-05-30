package com.ssh2.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Identitycard entity. @author MyEclipse Persistence Tools
 */

public class Identitycard implements java.io.Serializable {

	// Fields

	private Integer id;
	private String cardNo;
	private Set peoples = new HashSet(0);

	// Constructors

	/** default constructor */
	public Identitycard() {
	}

	/** full constructor */
	public Identitycard(String cardNo, Set peoples) {
		this.cardNo = cardNo;
		this.peoples = peoples;
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

	public Set getPeoples() {
		return this.peoples;
	}

	public void setPeoples(Set peoples) {
		this.peoples = peoples;
	}

}