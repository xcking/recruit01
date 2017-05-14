package com.cx.entity;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AbstractJob entity provides the base persistence definition of the Job
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractJob implements java.io.Serializable {

	// Fields

	private Integer jobId;
	private Company company;
	private Integer jobRecruitmentNumber;
	private String jobName;
	private String jobEducationRequire;
	private String jobExperience;
	private String jobDescribe;
	private String jobFromPlaces;
	private String jobDestination;
	private String jobSalary;
	private Date jobStartdate;
	private Date jobMaxdate;
	private Set companyappraises = new HashSet(0);
	private Set applicants = new HashSet(0);
	private Set appraises = new HashSet(0);
	private Set appeals = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractJob() {
	}

	/** minimal constructor */
	public AbstractJob(Company company, Integer jobRecruitmentNumber,
			String jobName, String jobEducationRequire, String jobExperience,
			String jobDescribe) {
		this.company = company;
		this.jobRecruitmentNumber = jobRecruitmentNumber;
		this.jobName = jobName;
		this.jobEducationRequire = jobEducationRequire;
		this.jobExperience = jobExperience;
		this.jobDescribe = jobDescribe;
	}

	/** full constructor */
	public AbstractJob(Company company, Integer jobRecruitmentNumber,
			String jobName, String jobEducationRequire, String jobExperience,
			String jobDescribe, String jobFromPlaces, String jobDestination,
			String jobSalary, Date jobStartdate, Date jobMaxdate,
			Set companyappraises, Set applicants, Set appraises, Set appeals) {
		this.company = company;
		this.jobRecruitmentNumber = jobRecruitmentNumber;
		this.jobName = jobName;
		this.jobEducationRequire = jobEducationRequire;
		this.jobExperience = jobExperience;
		this.jobDescribe = jobDescribe;
		this.jobFromPlaces = jobFromPlaces;
		this.jobDestination = jobDestination;
		this.jobSalary = jobSalary;
		this.jobStartdate = jobStartdate;
		this.jobMaxdate = jobMaxdate;
		this.companyappraises = companyappraises;
		this.applicants = applicants;
		this.appraises = appraises;
		this.appeals = appeals;
	}

	// Property accessors

	public Integer getJobId() {
		return this.jobId;
	}

	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}

	public Company getCompany() {
		return this.company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Integer getJobRecruitmentNumber() {
		return this.jobRecruitmentNumber;
	}

	public void setJobRecruitmentNumber(Integer jobRecruitmentNumber) {
		this.jobRecruitmentNumber = jobRecruitmentNumber;
	}

	public String getJobName() {
		return this.jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getJobEducationRequire() {
		return this.jobEducationRequire;
	}

	public void setJobEducationRequire(String jobEducationRequire) {
		this.jobEducationRequire = jobEducationRequire;
	}

	public String getJobExperience() {
		return this.jobExperience;
	}

	public void setJobExperience(String jobExperience) {
		this.jobExperience = jobExperience;
	}

	public String getJobDescribe() {
		return this.jobDescribe;
	}

	public void setJobDescribe(String jobDescribe) {
		this.jobDescribe = jobDescribe;
	}

	public String getJobFromPlaces() {
		return this.jobFromPlaces;
	}

	public void setJobFromPlaces(String jobFromPlaces) {
		this.jobFromPlaces = jobFromPlaces;
	}

	public String getJobDestination() {
		return this.jobDestination;
	}

	public void setJobDestination(String jobDestination) {
		this.jobDestination = jobDestination;
	}

	public String getJobSalary() {
		return this.jobSalary;
	}

	public void setJobSalary(String jobSalary) {
		this.jobSalary = jobSalary;
	}

	public Date getJobStartdate() {
		return jobStartdate;
	}

	public void setJobStartdate(Date jobStartdate) {
		this.jobStartdate = jobStartdate;
	}

	public Date getJobMaxdate() {
		return jobMaxdate;
	}

	public void setJobMaxdate(Date jobMaxdate) {
		this.jobMaxdate = jobMaxdate;
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

	public Set getAppraises() {
		return this.appraises;
	}

	public void setAppraises(Set appraises) {
		this.appraises = appraises;
	}

	public Set getAppeals() {
		return this.appeals;
	}

	public void setAppeals(Set appeals) {
		this.appeals = appeals;
	}

}