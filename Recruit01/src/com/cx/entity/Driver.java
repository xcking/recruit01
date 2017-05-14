package com.cx.entity;

import java.util.Set;

/**
 * Driver entity. @author MyEclipse Persistence Tools
 */
public class Driver extends AbstractDriver implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Driver() {
	}

	/** minimal constructor */
	public Driver(String driverName, String driverAccount, String driverPassword) {
		super(driverName, driverAccount, driverPassword);
	}
	/** full constructor */
	public Driver(String driverName, String driverAccount,
			String driverPassword, String driverSex, Integer driverAge,
			String driverHire, Set companyappraises, Set appraises,
			Driverdetails driverdetails, Set appeals, Set applicants) {
		super(driverName, driverAccount, driverPassword, driverSex, driverAge,
				driverHire, companyappraises, appraises, driverdetails, appeals,
				applicants);
		// TODO Auto-generated constructor stub
	}



}
