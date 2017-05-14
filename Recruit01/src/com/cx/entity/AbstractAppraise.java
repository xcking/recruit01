package com.cx.entity;

/**
 * AbstractAppraise entity provides the base persistence definition of the
 * Appraise entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractAppraise implements java.io.Serializable {

	// Fields

	private Integer id;
	private Driver driver;
	private Job job;
	private String content;

	// Constructors

	/** default constructor */
	public AbstractAppraise() {
	}

	/** full constructor */
	public AbstractAppraise(Driver driver, Job job, String content) {
		this.driver = driver;
		this.job = job;
		this.content = content;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}