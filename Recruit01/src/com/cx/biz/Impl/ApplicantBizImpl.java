package com.cx.biz.Impl;

import java.util.List;

import com.cx.biz.ApplicantBiz;
import com.cx.dao.ApplicantDao;
import com.cx.entity.Applicant;
import com.cx.entity.Company;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public class ApplicantBizImpl implements ApplicantBiz {
	private ApplicantDao applicantDao;
	
	public ApplicantDao getApplicantDao() {
		return applicantDao;
	}

	public void setApplicantDao(ApplicantDao applicantDao) {
		this.applicantDao = applicantDao;
	}

	@Override
	public void addApplicant(Applicant applicant) {
		applicantDao.addApplicant(applicant);
	}

	@Override
	public void updateApplicant(Applicant applicant) {
		applicantDao.updateApplicant(applicant);
	}

	@Override
	public List<Applicant> findApplicantByJob(Job job) {
		return applicantDao.findApplicantByJob(job);
	}

	@Override
	public Applicant findApplicantById(int addId) {
		return applicantDao.findApplicantById(addId);
	}

	@Override
	public List<Applicant> findApplicantByDriver(Driver driver) {
		return applicantDao.findApplicantByDriver(driver);
	}

	@Override
	public void deleteAppByJob(Job job) {
		applicantDao.deleteAppByJob(job);
	}

	@Override
	public List<Applicant> findApplicantByCompany(Company company) {
		return applicantDao.findApplicantByCompany(company);
	}

}
