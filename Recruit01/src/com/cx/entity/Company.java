package com.cx.entity;

import java.util.Set;

/**
 * Company entity. @author MyEclipse Persistence Tools
 */
public class Company extends AbstractCompany implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Company() {
	}

	/** minimal constructor */
	public Company(String companyName, String companyAddress,
			String companyAccount, String companyPassword) {
		super(companyName, companyAddress, companyAccount, companyPassword);
	}
	/** full constructor */
	public Company(String companyName, String companyAddress,
			String companyScale, String companyField, String companyHomepage,
			Integer companyPoint, String companyAccount,
			String companyPassword, String companyLevel, Set companyappraises,
			Set applicants, Set jobs) {
		super(companyName, companyAddress, companyScale, companyField, companyHomepage,
				companyPoint, companyAccount, companyPassword, companyLevel,
				companyappraises, applicants, jobs);
		// TODO Auto-generated constructor stub
	}



}
