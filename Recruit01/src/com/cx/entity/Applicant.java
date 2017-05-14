package com.cx.entity;

import java.sql.Timestamp;

/**
 * Applicant entity. @author MyEclipse Persistence Tools
 */
public class Applicant extends AbstractApplicant implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Applicant() {
	}

	/** full constructor */
	public Applicant(Company company, Driver driver, Job job,
			Timestamp acceptTime, String hire) {
		super(company, driver, job, acceptTime, hire);
		// TODO Auto-generated constructor stub
	}

	public Applicant(Driver driver, Job job, Timestamp acceptTime, String hire) {
		super(driver, job, acceptTime, hire);
		// TODO Auto-generated constructor stub
	}

}
