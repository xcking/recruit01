package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.AppealDao;
import com.cx.entity.Appeal;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public class AppealDaoImpl extends BaseHibDao implements AppealDao {

	@Override
	public void addAppeal(Appeal appeal) {
		super.add(appeal);
	}

	@Override
	public List<Appeal> getAllAppeal() {
		String hql = "from Appeal order by state desc";
		return super.search(hql, null);
	}

	@Override
	public void deleteAppeal(Job job) {
		String hql = "delete Appeal where job=:job";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("job",job);
	}

	@Override
	public Appeal getById(int id) {
		return (Appeal) super.get(Appeal.class, id);
	}

	@Override
	public void updateAppeal(Appeal appeal) {
		super.update(appeal);
	}

	@Override
	public List<Appeal> getByDriver(Driver driver) {
		String hql = "from Appeal where driver=:driver";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driver", driver);
		return super.search(hql, map);
	}

}
