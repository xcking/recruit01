package com.cx.biz;

import java.util.List;

import com.cx.entity.Company;
import com.cx.entity.Job;

public interface JobBiz {
	public void addJob(Job job);
	public Job findJobById(int jobId);
	public List<Job> findJobByCompany(Company company);
	public List<Job> findAllJob();	//查询所有发布的工作	
	public	List<Job> findByCondition(Job job);		//根据输入条件查询工作
	public List<Job> findByfrom(String from);
	public List<Job> findByDestination(String jobDestination);
	public void updateJob(Job job);
	public void deleteJob(int jobId);
}
