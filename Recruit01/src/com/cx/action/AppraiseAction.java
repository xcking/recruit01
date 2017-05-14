package com.cx.action;

import java.util.List;

import com.cx.biz.AppraiseBiz;
import com.cx.biz.JobBiz;
import com.cx.entity.Appraise;
import com.cx.entity.Driver;
import com.cx.entity.Job;
import com.opensymphony.xwork2.ModelDriven;

public class AppraiseAction extends BaseAction implements ModelDriven<Appraise> {
	private Appraise appraise = new Appraise();
	private AppraiseBiz appraiseBiz;
	private JobBiz jobBiz;
	private int  jobId;
	@Override
	public Appraise getModel() {
		return appraise;
	}
	//getter、setter
	public void setAppraiseBiz(AppraiseBiz appraiseBiz) {
		this.appraiseBiz = appraiseBiz;
	}
	public void setJobBiz(JobBiz jobBiz) {
		this.jobBiz = jobBiz;
	}
	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	//跳转到用户添加评论
	public String toAddAppraise(){
		Job job = jobBiz.findJobById(jobId);
		request.setAttribute("job", job);
		return "toAppraise";
	}
	/*
	 * 用户添加评论
	 */
	public String doAddAppraise(){
		Driver driver = (Driver) session.getAttribute("driver");
		Job job = new Job();
		job.setJobId(jobId);
		appraise.setDriver(driver);
		appraise.setJob(job);
		try {
			appraiseBiz.addAppraise(appraise);
			return "addAppraiseSuccess";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "error";
	}
	/*
	 * 删除评论
	 */
	public String deleteAppraise(){
		try {
			appraiseBiz.deleteAppraise(appraise.getId());
			return "deleteSuccess";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "error";
	}
	/*
	 * 查看一个职位下的所有评论
	 */
	public String getAllAppraiseByJob(){
		Job job = new Job();
		job.setJobId(jobId);
		try {
			List<Appraise> aList = appraiseBiz.searchAppraiseByJob(job);
			request.setAttribute("aList", aList);
			return "appraiseList";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	
	}
	/*
	 * 用户查看自己发的所有评论
	 */
	public String getAllAppraiseByDriver(){
		Driver driver = (Driver) session.getAttribute("driver");
		try {
			List<Appraise> aList = appraiseBiz.searchAppraiseByDriver(driver);
			request.setAttribute("aList", aList);
			return "appraiseDriverList";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		
	}
}
