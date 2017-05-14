package com.cx.entity;

import java.sql.Date;
import java.util.Set;

/**
 * Job entity. @author MyEclipse Persistence Tools
 */
public class Job extends AbstractJob implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Job() {
	}

	/** minimal constructor */
	public Job(Company company, Integer jobRecruitmentNumber, String jobName,
			String jobEducationRequire, String jobExperience, String jobDescribe) {
		super(company, jobRecruitmentNumber, jobName, jobEducationRequire,
				jobExperience, jobDescribe);
		// TODO Auto-generated constructor stub
	}
	/** full constructor */
	public Job(Company company, Integer jobRecruitmentNumber, String jobName,
			String jobEducationRequire, String jobExperience,
			String jobDescribe, String jobFromPlaces, String jobDestination,
			String jobSalary, Date jobStartdate, Date jobMaxdate,
			Set companyappraises, Set applicants, Set appraises, Set appeals) {
		super(company, jobRecruitmentNumber, jobName, jobEducationRequire,
				jobExperience, jobDescribe, jobFromPlaces, jobDestination, jobSalary,
				jobStartdate, jobMaxdate, companyappraises, applicants, appraises,
				appeals);
		// TODO Auto-generated constructor stub
	}

	




}
