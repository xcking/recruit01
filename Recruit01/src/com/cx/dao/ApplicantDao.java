package com.cx.dao;

import java.util.List;

import com.cx.entity.Applicant;
import com.cx.entity.Company;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public interface ApplicantDao {
	public void addApplicant(Applicant applicant);
	public void updateApplicant(Applicant applicant);
	public List<Applicant> findApplicantByJob(Job job);		//根据每一个职位的投递情况
	public Applicant findApplicantById(int addId);
	public List<Applicant> findApplicantByDriver(Driver driver);
	public List<Applicant> findApplicantByCompany(Company company);
	public void deleteAppByJob(Job job);
}
