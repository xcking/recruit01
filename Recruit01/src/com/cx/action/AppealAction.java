package com.cx.action;

import java.util.List;

import com.cx.biz.AppealBiz;
import com.cx.biz.CompanyBiz;
import com.cx.biz.JobBiz;
import com.cx.entity.Appeal;
import com.cx.entity.Company;
import com.cx.entity.Driver;
import com.cx.entity.Job;
import com.opensymphony.xwork2.ModelDriven;

public class AppealAction extends BaseAction implements ModelDriven<Appeal> {
	private Appeal appeal = new Appeal();
	private AppealBiz appealBiz;
	private  Integer jobId;
	private JobBiz jobBiz;
	private CompanyBiz companyBiz;
	
	
	@Override
	public Appeal getModel() {
		return appeal;
	}
	
	
	public AppealBiz getAppealBiz() {
		return appealBiz;
	}
	public void setAppealBiz(AppealBiz appealBiz) {
		this.appealBiz = appealBiz;
	}
	public Integer getJobId() {
		return jobId;
	}
	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}
	public void setJobBiz(JobBiz jobBiz) {
		this.jobBiz = jobBiz;
	}
	public void setCompanyBiz(CompanyBiz companyBiz) {
		this.companyBiz = companyBiz;
	}
	
	
	
	
	public String toAddAppeal(){
		Job job = jobBiz.findJobById(jobId);
		request.setAttribute("job", job);
		return "toAddAppeal";
	}
	public String addAppeal(){
		Driver driver = (Driver) session.getAttribute("driver");
		Job job = new Job();
		job.setJobId(jobId);
		appeal.setDriver(driver);
		appeal.setJob(job);
		appeal.setState("等待处理");
		appealBiz.addAppeal(appeal);
		return "AddAppealSuccess";
	}
	public String getAllAppeal(){
		List<Appeal> aList = appealBiz.getAllAppeal();
		if (aList != null && !aList.equals("")) {
			request.setAttribute("aList", aList);
			return "toAppealList";
		}
		return "listNULL";
	}
	public String toHandle(){
		Appeal appeal1 = appealBiz.getById(appeal.getId());
		if (appeal1 != null) {
			request.setAttribute("appeal", appeal1);
		}
		return "toHandle";
	}
	public String doHandle(){
		String pointString =  request.getParameter("point");
		int point = Integer.parseInt(pointString);
		 Job job = jobBiz.findJobById(jobId);
		Company company =job.getCompany();
		company.setCompanyPoint(company.getCompanyPoint()-point);
		companyBiz.updateCompany(company);
		Appeal appeal1= appealBiz.getById(appeal.getId());
		appeal1.setState("处理完成");
		appealBiz.updateAppeal(appeal1);
		return "HandleSuccess";
	}
	
	public String findByDriver(){
		Driver driver = (Driver) session.getAttribute("driver");
		List<Appeal> list = appealBiz.getByDriver(driver);
		if (list!=null&&!list.equals("")) {
			request.setAttribute("aList", list);
			return "MyAppeal";
		}
		return "findError";
	}
}
