package com.cx.action;

import java.util.List;

import com.cx.biz.CompanyBiz;
import com.cx.entity.Company;
import com.cx.entity.Job;
import com.opensymphony.xwork2.ModelDriven;

public class CompanyAction extends BaseAction implements ModelDriven<Company>{
	private Company company = new Company();
	private CompanyBiz companyBiz;	
	
	public void setCompanyBiz(CompanyBiz companyBiz) {
		this.companyBiz = companyBiz;
	}
	@Override
	public Company getModel() {
		return company;
	}
	
	public String toAddCompany(){
		return "toAdd";
	}
	
	/*根据企业名称查找企业*/
	public String searchCompany(){
		Company company1 = companyBiz.findCompanyByName(company.getCompanyName());
		request.setAttribute("company", company1);
		return "companyMeassge";
	}
	/*
	 * 跳转的企业登录页面
	 * */
	public String toLogin(){
		return "toCompanyLogin";
	}
	/*
	 * 企业登录
	 * */
	public String companyLogin(){
		Company company1 = companyBiz.loginCompany(company.getCompanyAccount());
		if (company1 !=null && company1.getCompanyPassword().equals(company.getCompanyPassword())) {
			session.setAttribute("company", company1);
			return "companyLoginSuccess";
		}
		return "loginError";
	}
	/*跳转到企业用户注册*/
	public String toRegister(){
		return "toRegister";
	}
	/*企业用户注册*/
	public String companyRegister(){
		company.setCompanyPoint(1000);
		companyBiz.addCompany(company);
		return "toCompanyLogin";
	}
	/*
	 * 按名称搜索企业
	 */
	public String searchCompanyName(){
		Company company1 = companyBiz.findCompanyByName(company.getCompanyName());
		request.setAttribute("company", company1);
		return "searchResult";
	}
	
	/*
	 * 更新企业等级
	 */
	public String updateCompanyLevel(){
		companyBiz.updateCompanyLevel(company.getCompanyId(), company.getCompanyLevel());
		return "levelUpdate";
	}
}
