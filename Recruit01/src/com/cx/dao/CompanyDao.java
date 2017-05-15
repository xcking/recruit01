package com.cx.dao;

import java.util.List;
import java.util.Set;

import com.cx.entity.Company;
import com.cx.entity.Job;

public interface CompanyDao {
	public Company findCompanyByAccount(String companyAccount);
	public Company findCompanyById(int companyId);
	public Company findCompanyByName(String companyName);
	public List<Job> findCompanyJob(int companyId);	//查询同公司发布的所有职位
	public Company findCompanyByJob(Job job);
	public void addCompany(Company company);
	public void deleteCompany(int companyId);
	public void updataCompany(Company company);
	public void updateCompanyLevel(int companyId,String companyLevel);
	
	public List<Company> getAllCompany();
}
