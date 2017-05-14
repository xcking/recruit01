package com.cx.action;

import java.util.List;

import com.cx.biz.ApplicantBiz;
import com.cx.biz.CompanyappraiseBiz;
import com.cx.entity.Applicant;
import com.cx.entity.Company;
import com.cx.entity.Companyappraise;
import com.cx.entity.Driver;
import com.opensymphony.xwork2.ModelDriven;

public class CompanyappraiseAction extends BaseAction implements ModelDriven<Companyappraise> {
	private Companyappraise companyappraise = new Companyappraise();
	private CompanyappraiseBiz companyappraiseBiz;
	private ApplicantBiz applicantBiz;
	@Override
	public Companyappraise getModel() {
		return companyappraise;
	}
	public void setCompanyappraiseBiz(CompanyappraiseBiz companyappraiseBiz) {
		this.companyappraiseBiz = companyappraiseBiz;
	}
	public void setApplicantBiz(ApplicantBiz applicantBiz) {
		this.applicantBiz = applicantBiz;
	}
	
	
	/*
	 * 跳转到评论页面
	 */
	public String toCompanyAppraise(){
		Company company = (Company) session.getAttribute("company");
		List<Applicant> aList = applicantBiz.findApplicantByCompany(company);
		request.setAttribute("aList", aList);
		return "toCompanyAppraise";
	}
	
	
	/*
	 * 用户添加评论
	 */
	public String addCompanyAppraise(){
		Driver driver = (Driver) session.getAttribute("driver");
		return null;
	}
}
