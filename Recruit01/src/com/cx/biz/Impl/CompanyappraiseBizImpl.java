package com.cx.biz.Impl;

import java.util.List;

import com.cx.biz.CompanyappraiseBiz;
import com.cx.dao.CompanyappraiseDao;
import com.cx.entity.Companyappraise;
import com.cx.entity.Driver;

public class CompanyappraiseBizImpl implements CompanyappraiseBiz {
	private CompanyappraiseDao companyappraiseDao;
	
	public void setCompanyappraiseDao(CompanyappraiseDao companyappraiseDao) {
		this.companyappraiseDao = companyappraiseDao;
	}

	@Override
	public void addCompanyappraise(Companyappraise companyappraise) {
		companyappraiseDao.addCompanyappraise(companyappraise);
	}

	@Override
	public void deleteCompanyappraise(int id) {
		companyappraiseDao.deleteCompanyappraise(id);
	}

	@Override
	public List<Companyappraise> getBydriver(Driver driver) {
		return companyappraiseDao.getByDriver(driver);
	}

}
