package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.JobDao;
import com.cx.entity.Company;
import com.cx.entity.Job;

public class JobDaoImpl extends BaseHibDao implements JobDao {

	@Override
	public void AddJob(Job job) {
		super.add(job);
	}

	@Override
	public List<Job> findAllJob() {
		String hql = "from Job";
		return super.search(hql, null);
	}

	@Override
	public List<Job> findByCondition(Job job) {
		return null;
	}

	@Override
	public void updateJob(Job job) {
		super.update(job);
	}

	@Override
	public void deleteJob(int jobId) {
		super.delete(Job.class, jobId);
	}

	@Override
	public List<Job> findByfrom(String from) {
		String hql = "from Job j where j.jobFromPlaces like :from ";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("from", "%"+from+"%");
		return super.search(hql, map);
	}

	@Override
	public List<Job> findByDestination(String jobDestination) {
		String hql = "from Job where jobDestination like :jobDestination";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("jobDestination", "%"+jobDestination+"%");
		List<Job> list = search(hql, map);
		return list;
	}

	@Override
	public Job findJobById(int jobId) {
		return (Job) super.get(Job.class, jobId);
	}

	@Override
	public List<Job> findJobByCompany(Company company) {
		String hql = "from Job where company = :company";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("company", company);
		return super.search(hql, map);
	}

}
