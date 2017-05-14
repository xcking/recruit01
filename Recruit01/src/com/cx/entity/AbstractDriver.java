package com.cx.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractDriver entity provides the base persistence definition of the Driver
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractDriver implements java.io.Serializable {

	// Fields

	private Integer driverId;
	private String driverName;
	private String driverAccount;
	private String driverPassword;
	private String driverSex;
	private Integer driverAge;
	private String driverHire;
	private Driverdetails driverdetails;
	private Set companyappraises = new HashSet(0);
	private Set appraises = new HashSet(0);
	private Set appeals = new HashSet(0);
	private Set applicants = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractDriver() {
	}

	/** minimal constructor */
	public AbstractDriver(String driverName, String driverAccount,
			String driverPassword) {
		this.driverName = driverName;
		this.driverAccount = driverAccount;
		this.driverPassword = driverPassword;
	}

	/** full constructor */
	public AbstractDriver(String driverName, String driverAccount,
			String driverPassword, String driverSex, Integer driverAge,
			String driverHire, Set companyappraises, Set appraises,
			Driverdetails driverdetails, Set appeals, Set applicants) {
		this.driverName = driverName;
		this.driverAccount = driverAccount;
		this.driverPassword = driverPassword;
		this.driverSex = driverSex;
		this.driverAge = driverAge;
		this.driverHire = driverHire;
		this.companyappraises = companyappraises;
		this.appraises = appraises;
		this.driverdetails = driverdetails;
		this.appeals = appeals;
		this.applicants = applicants;
	}

	// Property accessors

	public Integer getDriverId() {
		return this.driverId;
	}

	public void setDriverId(Integer driverId) {
		this.driverId = driverId;
	}

	public String getDriverName() {
		return this.driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	public String getDriverAccount() {
		return this.driverAccount;
	}

	public void setDriverAccount(String driverAccount) {
		this.driverAccount = driverAccount;
	}

	public String getDriverPassword() {
		return this.driverPassword;
	}

	public void setDriverPassword(String driverPassword) {
		this.driverPassword = driverPassword;
	}

	public String getDriverSex() {
		return this.driverSex;
	}

	public void setDriverSex(String driverSex) {
		this.driverSex = driverSex;
	}

	public Integer getDriverAge() {
		return this.driverAge;
	}

	public void setDriverAge(Integer driverAge) {
		this.driverAge = driverAge;
	}

	public String getDriverHire() {
		return this.driverHire;
	}

	public void setDriverHire(String driverHire) {
		this.driverHire = driverHire;
	}

	public Set getCompanyappraises() {
		return this.companyappraises;
	}

	public void setCompanyappraises(Set companyappraises) {
		this.companyappraises = companyappraises;
	}

	public Set getAppraises() {
		return this.appraises;
	}

	public void setAppraises(Set appraises) {
		this.appraises = appraises;
	}


	public Driverdetails getDriverdetails() {
		return driverdetails;
	}

	public void setDriverdetails(Driverdetails driverdetails) {
		this.driverdetails = driverdetails;
	}

	public Set getAppeals() {
		return this.appeals;
	}

	public void setAppeals(Set appeals) {
		this.appeals = appeals;
	}

	public Set getApplicants() {
		return this.applicants;
	}

	public void setApplicants(Set applicants) {
		this.applicants = applicants;
	}

}