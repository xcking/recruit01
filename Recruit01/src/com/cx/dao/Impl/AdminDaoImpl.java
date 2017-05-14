package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.AdminDao;
import com.cx.entity.Admin;

public class AdminDaoImpl extends BaseHibDao implements AdminDao {

	@Override
	public Admin findAdmin(String adminAccount) {
		String hql = "from Admin where adminAccount=:adminAccount";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminAccount", adminAccount);
		List<Admin> list = super.search(hql, map);
		if (!list.equals("")) {
			for (Admin admin : list) {
				return admin;
			}
		}
		return null ;
	}

	@Override
	public void addAdmin(Admin admin) {
		super.add(admin);

	}

}
