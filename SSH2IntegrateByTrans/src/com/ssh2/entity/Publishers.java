package com.ssh2.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Publishers entity. @author MyEclipse Persistence Tools
 */

public class Publishers implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Set bookses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Publishers() {
	}

	/** minimal constructor */
	public Publishers(String name) {
		this.name = name;
	}

	/** full constructor */
	public Publishers(String name, Set bookses) {
		this.name = name;
		this.bookses = bookses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getBookses() {
		return this.bookses;
	}

	public void setBookses(Set bookses) {
		this.bookses = bookses;
	}

}