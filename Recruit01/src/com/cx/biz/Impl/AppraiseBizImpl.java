package com.cx.biz.Impl;

import java.util.List;

import com.cx.biz.AppraiseBiz;
import com.cx.dao.AppraiseDao;
import com.cx.entity.Appraise;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public class AppraiseBizImpl implements AppraiseBiz {
	private AppraiseDao appraiseDao;
	
	public AppraiseDao getAppraiseDao() {
		return appraiseDao;
	}

	public void setAppraiseDao(AppraiseDao appraiseDao) {
		this.appraiseDao = appraiseDao;
	}

	@Override
	public void addAppraise(Appraise appraise) throws Exception {
		appraiseDao.addAppraise(appraise);
	}

	@Override
	public void deleteAppraise(int id) throws Exception {
		appraiseDao.deleteAppraise(id);
	}

	@Override
	public List<Appraise> searchAppraiseByJob(Job job) throws Exception {
		return appraiseDao.searchAppraiseByJob(job);
	}

	@Override
	public List<Appraise> searchAppraiseByDriver(Driver driver)
			throws Exception {
		return appraiseDao.searchAppraiseByDriver(driver);
	}

	@Override
	public void deleteAppraiseByJob(Job job) throws Exception {
		appraiseDao.deleteAppraiseByJob(job);
	}

}
