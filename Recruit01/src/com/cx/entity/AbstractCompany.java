package com.cx.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractCompany entity provides the base persistence definition of the
 * Company entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCompany implements java.io.Serializable {

	// Fields

	private Integer companyId;
	private String companyName;
	private String companyAddress;
	private String companyScale;
	private String companyField;
	private String companyHomepage;
	private Integer companyPoint;
	private String companyAccount;
	private String companyPassword;
	private String companyLevel;
	private Set companyappraises = new HashSet(0);
	private Set applicants = new HashSet(0);
	private Set jobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractCompany() {
	}

	/** minimal constructor */
	public AbstractCompany(String companyName, String companyAddress,
			String companyAccount, String companyPassword) {
		this.companyName = companyName;
		this.companyAddress = companyAddress;
		this.companyAccount = companyAccount;
		this.companyPassword = companyPassword;
	}

	/** full constructor */
	public AbstractCompany(String companyName, String companyAddress,
			String companyScale, String companyField, String companyHomepage,
			Integer companyPoint, String companyAccount,
			String companyPassword, String companyLevel, Set companyappraises,
			Set applicants, Set jobs) {
		this.companyName = companyName;
		this.companyAddress = companyAddress;
		this.companyScale = companyScale;
		this.companyField = companyField;
		this.companyHomepage = companyHomepage;
		this.companyPoint = companyPoint;
		this.companyAccount = companyAccount;
		this.companyPassword = companyPassword;
		this.companyLevel = companyLevel;
		this.companyappraises = companyappraises;
		this.applicants = applicants;
		this.jobs = jobs;
	}

	// Property accessors

	public Integer getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyAddress() {
		return this.companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getCompanyScale() {
		return this.companyScale;
	}

	public void setCompanyScale(String companyScale) {
		this.companyScale = companyScale;
	}

	public String getCompanyField() {
		return this.companyField;
	}

	public void setCompanyField(String companyField) {
		this.companyField = companyField;
	}

	public String getCompanyHomepage() {
		return this.companyHomepage;
	}

	public void setCompanyHomepage(String companyHomepage) {
		this.companyHomepage = companyHomepage;
	}

	public Integer getCompanyPoint() {
		return this.companyPoint;
	}

	public void setCompanyPoint(Integer companyPoint) {
		this.companyPoint = companyPoint;
	}

	public String getCompanyAccount() {
		return this.companyAccount;
	}

	public void setCompanyAccount(String companyAccount) {
		this.companyAccount = companyAccount;
	}

	public String getCompanyPassword() {
		return this.companyPassword;
	}

	public void setCompanyPassword(String companyPassword) {
		this.companyPassword = companyPassword;
	}

	public String getCompanyLevel() {
		return this.companyLevel;
	}

	public void setCompanyLevel(String companyLevel) {
		this.companyLevel = companyLevel;
	}

	public Set getCompanyappraises() {
		return this.companyappraises;
	}

	public void setCompanyappraises(Set companyappraises) {
		this.companyappraises = companyappraises;
	}

	public Set getApplicants() {
		return this.applicants;
	}

	public void setApplicants(Set applicants) {
		this.applicants = applicants;
	}

	public Set getJobs() {
		return this.jobs;
	}

	public void setJobs(Set jobs) {
		this.jobs = jobs;
	}

}