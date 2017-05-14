package com.cx.action;




import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.cx.biz.ApplicantBiz;
import com.cx.biz.DriverDetailsBiz;
import com.cx.biz.JobBiz;
import com.cx.entity.Applicant;
import com.cx.entity.Company;
import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;
import com.cx.entity.Job;
import com.opensymphony.xwork2.ModelDriven;

public class ApplicantAction extends BaseAction implements ModelDriven<Applicant> {
	private Applicant applicant = new Applicant();
	private ApplicantBiz applicantBiz;
	private DriverDetailsBiz driverDetailsBiz;
	private JobBiz jobBiz;
	private Integer jobId;
	
	public Integer getJobId() {
		return jobId;
	}


	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}


	public void setApplicantBiz(ApplicantBiz applicantBiz) {
		this.applicantBiz = applicantBiz;
	}
	
	
	public void setDriverDetailsBiz(DriverDetailsBiz driverDetailsBiz) {
		this.driverDetailsBiz = driverDetailsBiz;
	}
	public void setJobBiz(JobBiz jobBiz) {
		this.jobBiz = jobBiz;
	}


	@Override
	public Applicant getModel() {
		return applicant;
	}
	/*
	 * 个人用户投递
	 * */
	public String doApplicant(){
		Driver driver = (Driver) session.getAttribute("driver");
		applicant.setDriver(driver);
		Job job = jobBiz.findJobById(jobId);
		applicant.setJob(job);
		applicant.setCompany(job.getCompany());
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String uDate = format.format(date);
		Date date2 = null;
		try {
			date2 = format.parse(uDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Timestamp tt = new Timestamp(date2.getTime());
		System.out.println(tt);
		applicant.setAcceptTime(tt);
		applicant.setHire("等待查看");
		applicantBiz.addApplicant(applicant);
		Driverdetails driverdetails = driverDetailsBiz.findDetailByDriver(driver);
		driverdetails.setDriverPoint(driverCount(driverdetails.getDriverPoint()));
		driverDetailsBiz.updateDetails(driverdetails);
		driver.setDriverdetails(driverdetails);
		session.setAttribute("driver", driver);
		return "applicantSuccess";
		
	}
	/*
	 * 
	 */
	public int driverCount(int i){
		int n =i+10;
		return n;
	}
	/*
	 * 根据职位查询所有投递人员
	 */
	public String findApplicant(){
		Job job = new Job();
		job.setJobId(jobId);
		List<Applicant> aList= applicantBiz.findApplicantByJob(job);
		if (aList != null) {
			request.setAttribute("aList", aList);
			return "ApplicantDetails";
		}
		return "none";
	}
	/*
	 * 企业对投递情况进行处理
	 */
	public String  UpdateHire(){
		Applicant applicant1 = applicantBiz.findApplicantById(applicant.getAppId());
		applicant1.setHire(applicant.getHire());
		Company company = (Company) session.getAttribute("company");
		applicant1.setCompany(company);
		applicantBiz.updateApplicant(applicant1);
		return "ApplicantSuccess";
	}
	/*
	 * 根据个人用户查询投递情况
	 */
	public String findAppByDriver(){
		Driver driver = (Driver) session.getAttribute("driver");
		List<Applicant> aList = applicantBiz.findApplicantByDriver(driver);
		if (aList != null) {
			request.setAttribute("aList", aList);
			return "findHire";
		}
		return "error";
	}
	/*
	 * 结束行程
	 */
	public String endJob(){
		
		return null;
	}
	public String findApplicantByCompany(){
		Company company = (Company) session.getAttribute("company");
		List<Applicant> aList = applicantBiz.findApplicantByCompany(company);
		request.setAttribute("aList", aList);
		return "companyApplicant";
	}
}
