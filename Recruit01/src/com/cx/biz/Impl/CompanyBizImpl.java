package com.cx.biz.Impl;

import java.util.List;

import com.cx.biz.CompanyBiz;
import com.cx.dao.CompanyDao;
import com.cx.entity.Company;
import com.cx.entity.Job;

public class CompanyBizImpl implements CompanyBiz {
	private CompanyDao companyDao;
	
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}

	@Override
	public Company findCompanyById(int companyId) {
		return companyDao.findCompanyById(companyId);
	}

	@Override
	public Company findCompanyByName(String companyName) {
		return companyDao.findCompanyByName(companyName);
	}

	@Override
	public void addCompany(Company company) {
		companyDao.addCompany(company);
	}

	@Override
	public void deleteCompany(int companyId) {
		companyDao.deleteCompany(companyId);
	}

	@Override
	public void updateCompany(Company company) {
		companyDao.updataCompany(company);
	}

	@Override
	public List<Job> findCompanyJob(int companyId) {
		return companyDao.findCompanyJob(companyId);
	}

	@Override
	public Company loginCompany(String companyAccount) {
		return companyDao.findCompanyByAccount(companyAccount);
	}

	@Override
	public Company findCompanyByJob(Job job) {
		return companyDao.findCompanyByJob(job);
	}

	@Override
	public void updateCompanyLevel(int companyId, String companyLevel) {
		companyDao.updateCompanyLevel(companyId, companyLevel);
	}

	@Override
	public List<Company> getAllCompany() {
		return companyDao.getAllCompany();
	}


}
