package com.ssh2.entity;

/**
 * Sc entity. @author MyEclipse Persistence Tools
 */

public class Sc implements java.io.Serializable {

	// Fields

	private ScId id;

	// Constructors

	/** default constructor */
	public Sc() {
	}

	/** full constructor */
	public Sc(ScId id) {
		this.id = id;
	}

	// Property accessors

	public ScId getId() {
		return this.id;
	}

	public void setId(ScId id) {
		this.id = id;
	}

}