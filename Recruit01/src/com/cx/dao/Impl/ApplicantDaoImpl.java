package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.ApplicantDao;
import com.cx.entity.Applicant;
import com.cx.entity.Company;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public class ApplicantDaoImpl extends BaseHibDao implements ApplicantDao {

	public void addApplicant(Applicant applicant) {
		super.add(applicant);
	}

	public void updateApplicant(Applicant applicant) {
		super.update(applicant);
	}

	@Override
	public List<Applicant> findApplicantByJob(Job job) {
		String hql = "from Applicant where job =:job and (hire='等待查看' or hire='等待') ";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("job", job);
		return super.search(hql, map);
	}

	@Override
	public Applicant findApplicantById(int addId) {
		return (Applicant) super.get(Applicant.class, addId);
	}

	@Override
	public List<Applicant> findApplicantByDriver(Driver driver) {
		String hql = "from Applicant a where a.driver=:driver";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driver", driver);
		List<Applicant> list = super.search(hql, map);
		return list;
	}

	@Override
	public void deleteAppByJob(Job job) {
		String hql = "delete from Applicant where job=:job";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("job", job);
	}

	@Override
	public List<Applicant> findApplicantByCompany(Company company) {
		String hql = "from Applicant a where a.company=:company and hire = '等待查看'";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("company", company);
		return super.search(hql, map);
	}

}
