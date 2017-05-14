package com.cx.entity;

/**
 * AbstractAppeal entity provides the base persistence definition of the Appeal
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractAppeal implements java.io.Serializable {

	// Fields

	private Integer id;
	private Driver driver;
	private Job job;
	private String state;
	private String content;

	// Constructors

	/** default constructor */
	public AbstractAppeal() {
	}

	/** full constructor */
	public AbstractAppeal(Driver driver, Job job, String state, String content) {
		this.driver = driver;
		this.job = job;
		this.state = state;
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

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}