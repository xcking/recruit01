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
	
	/*������ҵ���Ʋ�����ҵ*/
	public String searchCompany(){
		Company company1 = companyBiz.findCompanyByName(company.getCompanyName());
		request.setAttribute("company", company1);
		return "companyMeassge";
	}
	/*
	 * ��ת����ҵ��¼ҳ��
	 * */
	public String toLogin(){
		return "toCompanyLogin";
	}
	/*
	 * ��ҵ��¼
	 * */
	public String companyLogin(){
		Company company1 = companyBiz.loginCompany(company.getCompanyAccount());
		if (company1 !=null && company1.getCompanyPassword().equals(company.getCompanyPassword())) {
			session.setAttribute("company", company1);
			return "companyLoginSuccess";
		}
		return "loginError";
	}
	/*��ת����ҵ�û�ע��*/
	public String toRegister(){
		return "toRegister";
	}
	/*��ҵ�û�ע��*/
	public String companyRegister(){
		company.setCompanyPoint(1000);
		companyBiz.addCompany(company);
		return "toCompanyLogin";
	}
	/*
	 * ������������ҵ
	 */
	public String searchCompanyName(){
		Company company1 = companyBiz.findCompanyByName(company.getCompanyName());
		request.setAttribute("company", company1);
		return "searchResult";
	}
	
	/*
	 * ������ҵ�ȼ�
	 */
	public String updateCompanyLevel(){
		companyBiz.updateCompanyLevel(company.getCompanyId(), company.getCompanyLevel());
		return "levelUpdate";
	}
}
