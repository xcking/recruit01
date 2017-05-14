package com.cx.biz.Impl;


import java.util.List;

import com.cx.biz.AppealBiz;
import com.cx.dao.AppealDao;
import com.cx.dao.AppraiseDao;
import com.cx.entity.Appeal;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public class AppealBizImpl implements AppealBiz {
	private AppealDao appealDao;
	

	public AppealDao getAppealDao() {
		return appealDao;
	}

	public void setAppealDao(AppealDao appealDao) {
		this.appealDao = appealDao;
	}

	@Override
	public void addAppeal(Appeal appeal) {
		appealDao.addAppeal(appeal);
	}

	@Override
	public List<Appeal> getAllAppeal() {
		return appealDao.getAllAppeal();
	}

	@Override
	public void deleteAppeal(Job job) {
		appealDao.deleteAppeal(job);
	}

	@Override
	public Appeal getById(int id) {
		return appealDao.getById(id);
	}

	@Override
	public void updateAppeal(Appeal appeal) {
		appealDao.updateAppeal(appeal);
	}

	@Override
	public List<Appeal> getByDriver(Driver driver) {
		return appealDao.getByDriver(driver);
	}

}
