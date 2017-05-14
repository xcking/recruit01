package com.cx.entity;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */
public class Admin extends AbstractAdmin implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** full constructor */
	public Admin(String adminaccount, String adminpassword) {
		super(adminaccount, adminpassword);
	}

}
