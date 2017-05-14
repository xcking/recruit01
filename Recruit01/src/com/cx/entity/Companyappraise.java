package com.cx.entity;

/**
 * Companyappraise entity. @author MyEclipse Persistence Tools
 */
public class Companyappraise extends AbstractCompanyappraise implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Companyappraise() {
	}

	/** full constructor */
	public Companyappraise(Company company, Driver driver, Job job,
			Integer arrive, Integer loss, Integer rated, String content) {
		super(company, driver, job, arrive, loss, rated, content);
	}

}
