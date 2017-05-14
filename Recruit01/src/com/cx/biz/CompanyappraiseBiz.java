package com.cx.biz;

import java.util.List;

import com.cx.entity.Companyappraise;
import com.cx.entity.Driver;

public interface CompanyappraiseBiz {
	public void addCompanyappraise(Companyappraise companyappraise);
	public void deleteCompanyappraise(int id);
	public List<Companyappraise> getBydriver(Driver driver);
}
