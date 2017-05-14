package com.cx.entity;

/**
 * AbstractCompanyappraise entity provides the base persistence definition of
 * the Companyappraise entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCompanyappraise implements java.io.Serializable {

	// Fields

	private Integer id;
	private Company company;
	private Driver driver;
	private Job job;
	private Integer arrive;
	private Integer loss;
	private Integer rated;
	private String content;

	// Constructors

	/** default constructor */
	public AbstractCompanyappraise() {
	}

	/** full constructor */
	public AbstractCompanyappraise(Company company, Driver driver, Job job,
			Integer arrive, Integer loss, Integer rated, String content) {
		this.company = company;
		this.driver = driver;
		this.job = job;
		this.arrive = arrive;
		this.loss = loss;
		this.rated = rated;
		this.content = content;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Integer getArrive() {
		return this.arrive;
	}

	public void setArrive(Integer arrive) {
		this.arrive = arrive;
	}

	public Integer getLoss() {
		return this.loss;
	}

	public void setLoss(Integer loss) {
		this.loss = loss;
	}

	public Integer getRated() {
		return this.rated;
	}

	public void setRated(Integer rated) {
		this.rated = rated;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}