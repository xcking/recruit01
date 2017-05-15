package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.cx.dao.CompanyDao;
import com.cx.entity.Company;
import com.cx.entity.Job;

public class CompanyDaoImpl extends BaseHibDao implements CompanyDao {

	@Override
	public Company findCompanyById(int companyId) {
		return 	(Company) super.get(Company.class, companyId);
	}

	@Override
	public Company findCompanyByName(String companyName) {
		String hql = "from Company where companyName =:companyName";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		List<Company> cList = super.search(hql, map);
		if (cList != null) {
			for (Company company : cList) {
				return company;
			}
		}
		return null;
	}

	@Override
	public void addCompany(Company company) {
		super.add(company);
	}

	@Override
	public void deleteCompany(int companyId) {
		super.delete(Company.class, companyId);

	}

	@Override
	public void updataCompany(Company company) {
		super.update(company);
	}


	@Override
	public List<Job> findCompanyJob(int companyId) {
		String hql = "select distinct(c.jobs) from Company as c  join  c.jobs where c.companyId = :companyId";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyId", companyId);
		List<Job> jList = super.search(hql, map);
		if (jList != null) {
			return jList;
		}
		return null;
	}

	@Override
	public Company findCompanyByAccount(String companyAccount) {
		String hql = "from Company where companyAccount=:companyAccount";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyAccount", companyAccount);
		List<Company> list = super.search(hql, map);
		if (list != null) {
			for (Company company : list) {
				return company;
			}
		}
		return null;
	}

	@Override
	public Company findCompanyByJob(Job job) {
		String hql= "from Company where job=:job";
		Map<String, Object> map= new HashMap<String, Object>();
		map.put("job", job);
		List<Company> list = super.search(hql, map);
		if (list!=null) {
			for (Company company : list) {
				return company;
			}
		}
		return null;
	}

	@Override
	public void updateCompanyLevel(int companyId, String companyLevel) {
		String hql = "update Company c set c.companyLevel=:companyLevel where c.companyId=:companyId";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyLevel", companyLevel);
		map.put("companyId", companyId);
		super.update(hql, map);
		
	}

	@Override
	public List<Company> getAllCompany() {
		String hql = "from Company";
		return super.search(hql, null);
	}

}
