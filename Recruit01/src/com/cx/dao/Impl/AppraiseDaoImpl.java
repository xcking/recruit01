package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.AppraiseDao;
import com.cx.entity.Appraise;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public class AppraiseDaoImpl extends BaseHibDao implements AppraiseDao {

	@Override
	public void addAppraise(Appraise appraise) throws Exception {
		super.add(appraise);
	}

	@Override
	public void deleteAppraise(int id) throws Exception {
		super.delete(Appraise.class, id);
	}

	@Override
	public List<Appraise> searchAppraiseByJob(Job job) throws Exception {
		String hql = "from Appraise where job = :job";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("job", job);
		return 	super.search(hql, map);
	}

	@Override
	public List<Appraise> searchAppraiseByDriver(Driver driver)
			throws Exception {
		String hql = "from Appraise where driver = :driver";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driver", driver);
		return super.search(hql, map);
	}

	@Override
	public void deleteAppraiseByJob(Job job) throws Exception {
		String hql = "delete Appraise where job=:job";
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("job", job);
	}

}
