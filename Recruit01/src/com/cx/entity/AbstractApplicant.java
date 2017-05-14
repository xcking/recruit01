package com.cx.entity;

import java.sql.Timestamp;

/**
 * AbstractApplicant entity provides the base persistence definition of the
 * Applicant entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractApplicant implements java.io.Serializable {

	// Fields

	private Integer appId;
	private Company company;
	private Driver driver;
	private Job job;
	private Timestamp acceptTime;
	private String hire;

	// Constructors

	/** default constructor */
	public AbstractApplicant() {
	}

	/** minimal constructor */
	public AbstractApplicant(Driver driver, Job job, Timestamp acceptTime,
			String hire) {
		this.driver = driver;
		this.job = job;
		this.acceptTime = acceptTime;
		this.hire = hire;
	}

	/** full constructor */
	public AbstractApplicant(Company company, Driver driver, Job job,
			Timestamp acceptTime, String hire) {
		this.company = company;
		this.driver = driver;
		this.job = job;
		this.acceptTime = acceptTime;
		this.hire = hire;
	}

	// Property accessors

	public Integer getAppId() {
		return this.appId;
	}

	public void setAppId(Integer appId) {
		this.appId = appId;
	}

	public Company getCompany() {
		return this.company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Driver getDriver() {
		return this.driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	public Job getJob() {
		return this.job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public Timestamp getAcceptTime() {
		return this.acceptTime;
	}

	public void setAcceptTime(Timestamp acceptTime) {
		this.acceptTime = acceptTime;
	}

	public String getHire() {
		return this.hire;
	}

	public void setHire(String hire) {
		this.hire = hire;
	}

}