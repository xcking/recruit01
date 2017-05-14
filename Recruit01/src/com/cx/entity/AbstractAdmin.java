package com.cx.entity;

/**
 * AbstractAdmin entity provides the base persistence definition of the Admin
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractAdmin implements java.io.Serializable {

	// Fields

	private Integer id;
	private String adminaccount;
	private String adminpassword;

	// Constructors

	/** default constructor */
	public AbstractAdmin() {
	}

	/** full constructor */
	public AbstractAdmin(String adminaccount, String adminpassword) {
		this.adminaccount = adminaccount;
		this.adminpassword = adminpassword;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAdminaccount() {
		return this.adminaccount;
	}

	public void setAdminaccount(String adminaccount) {
		this.adminaccount = adminaccount;
	}

	public String getAdminpassword() {
		return this.adminpassword;
	}

	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}

}