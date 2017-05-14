package com.cx.dao;

import java.util.List;

import com.cx.entity.Companyappraise;
import com.cx.entity.Driver;

public interface CompanyappraiseDao {
	public void addCompanyappraise(Companyappraise companyappraise);
	public void deleteCompanyappraise(int id);
	public List<Companyappraise> getByDriver(Driver driver);
}
