package com.cx.biz;

import java.util.List;

import com.cx.entity.Company;
import com.cx.entity.Job;

public interface CompanyBiz {
	public Company loginCompany(String companyAccount);
	public Company findCompanyById(int companyId);
	public Company findCompanyByName(String companyName);
	public Company findCompanyByJob(Job job);
	//public Office findCompanyByOffice(Office office);
	public List<Job> findCompanyJob(int companyId);
	public void addCompany(Company company);
	public void deleteCompany(int companyId);
	public void updateCompany(Company company);
	public void updateCompanyLevel(int companyId,String companyLevel);
}
