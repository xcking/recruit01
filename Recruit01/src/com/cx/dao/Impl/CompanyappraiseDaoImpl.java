package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.CompanyappraiseDao;
import com.cx.entity.Companyappraise;
import com.cx.entity.Driver;

public class CompanyappraiseDaoImpl extends BaseHibDao implements
		CompanyappraiseDao {

	@Override
	public void addCompanyappraise(Companyappraise companyappraise) {
		super.add(companyappraise);
	}

	@Override
	public void deleteCompanyappraise(int id) {
		super.delete(Companyappraise.class, id);
	}

	@Override
	public List<Companyappraise> getByDriver(Driver driver) {
		String hql = "from Companyappraise where driver=:driver";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driver", driver);
		List<Companyappraise> list = super.search(hql, map);
		if (list!=null) {
			return list;
		}
		return null;
	}

}
