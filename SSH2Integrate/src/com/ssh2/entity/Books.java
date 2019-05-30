package com.ssh2.entity;

/**
 * Books entity. @author MyEclipse Persistence Tools
 */

public class Books implements java.io.Serializable {

	// Fields

	private Integer id;
	private Publishers publishers;
	private String title;
	private String author;
	private Integer unitPrice;

	// Constructors

	/** default constructor */
	public Books() {
	}

	/** minimal constructor */
	public Books(Publishers publishers, String title, String author) {
		this.publishers = publishers;
		this.title = title;
		this.author = author;
	}

	/** full constructor */
	public Books(Publishers publishers, String title, String author, Integer unitPrice) {
		this.publishers = publishers;
		this.title = title;
		this.author = author;
		this.unitPrice = unitPrice;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Publishers getPublishers() {
		return this.publishers;
	}

	public void setPublishers(Publishers publishers) {
		this.publishers = publishers;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getUnitPrice() {
		return this.unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

}