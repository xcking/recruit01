package com.cx.action;

import java.util.List;

import com.cx.biz.AppealBiz;
import com.cx.biz.ApplicantBiz;
import com.cx.biz.AppraiseBiz;
import com.cx.biz.CompanyBiz;
import com.cx.biz.JobBiz;
import com.cx.entity.Appraise;
import com.cx.entity.Company;
import com.cx.entity.Job;
import com.opensymphony.xwork2.ModelDriven;

public class JobAction extends BaseAction implements ModelDriven<Job> {
	private Job job = new Job();
	private JobBiz jobBiz;
	private CompanyBiz companyBiz;
	private AppraiseBiz appraiseBiz;
	private ApplicantBiz applicantBiz;
	private AppealBiz appealBiz;
	
	

	public void setApplicantBiz(ApplicantBiz applicantBiz) {
		this.applicantBiz = applicantBiz;
	}

	public void setAppealBiz(AppealBiz appealBiz) {
		this.appealBiz = appealBiz;
	}

	public void setAppraiseBiz(AppraiseBiz appraiseBiz) {
		this.appraiseBiz = appraiseBiz;
	}

	public void setCompanyBiz(CompanyBiz companyBiz) {
		this.companyBiz = companyBiz;
	}

	public void setJobBiz(JobBiz jobBiz) {
		this.jobBiz = jobBiz;
	}

	@Override
	public Job getModel() {
		return job;
	}
	
	//转到发布职位
	public String toAddJob(){
		return "toAddJob";
	}
	//发布职位
	public String addJob(){
		if (job!=null) {
			Company company = (Company) session.getAttribute("company");
			job.setCompany(company);
			jobBiz.addJob(job);
			company.setCompanyPoint(this.count(company.getCompanyPoint())); 
			companyBiz.updateCompany(company);
			session.setAttribute("company", company);
			return "addSuccess";
		}
		return "adderror";
	}
	//关于企业积分计算方法
	public int count(int i){
		int n = i+50;
		return n;
	}
	public String toError(){
		return "error";
	}
	public String findJobByfrom(){
		List<Job> jlist = jobBiz.findByfrom(job.getJobFromPlaces());
		request.setAttribute("fList", jlist);
		return "findFrom";
	}
	public	String findJobByDestination(){
		String Destination = request.getParameter("jobDestination");
		List<Job> dList = jobBiz.findByDestination(Destination); 
		request.setAttribute("dList", dList);
		System.out.println(request.getAttribute("dList"));
		return "findDestination";
	}
	public String getAllJob(){
		List<Job> jList = jobBiz.findAllJob();
		request.setAttribute("jList", jList);
		return "zmInfo";
	}
	public String JobDetails() throws Exception{
		Job job1 = jobBiz.findJobById(job.getJobId());
		List<Appraise> aList = appraiseBiz.searchAppraiseByJob(job1);
		request.setAttribute("job", job1);
		request.setAttribute("aList", aList);
		return "toJobDetails";
	}
	public String findJobByCompany(){
		Company company = (Company) session.getAttribute("company");
		List<Job> jList = jobBiz.findJobByCompany(company);
		if (jList != null && !jList.equals("")) {
			request.setAttribute("jList", jList);
			return "companyJob";
		}
		return "findJobError";
	}
	/*
	 * 管理员查看被投诉的职位详情
	 */
	public String adminJobDetails(){
		Job job1 = jobBiz.findJobById(job.getJobId());
		request.setAttribute("job", job1);
		return "adminJobDetails";
	}
	/*
	 * 企业出现虚假信息，删除职位后扣除企业积分
	 */
	public String deleteJob() {
		try {
			/*applicantBiz.deleteAppByJob(job);
			appraiseBiz.deleteAppraiseByJob(job);
			appealBiz.deleteAppeal(job);*/
			Job job1 = jobBiz.findJobById(job.getJobId());
			Company company = job1.getCompany();
			if (company!=null) {
				int point = company.getCompanyPoint();
				company.setCompanyPoint(point - 300);
				companyBiz.updateCompany(company);
			}
			jobBiz.deleteJob(job.getJobId());
			return "deleteSuccess";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "delete Error";
		}
	}
	/*
	 * 企业自己删除招募信息
	 */
	public String companyDeleteJob(){
		jobBiz.deleteJob(job.getJobId());
		return "delete";
	}
}
