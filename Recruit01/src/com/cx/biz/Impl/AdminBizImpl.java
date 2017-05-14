package com.cx.biz.Impl;

import com.cx.biz.AdminBiz;
import com.cx.dao.AdminDao;
import com.cx.entity.Admin;

public class AdminBizImpl implements AdminBiz {
	private AdminDao adminDao;
	
	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public Admin loginAdmin(String adminAccount, String adminPassword) {
		Admin admin = adminDao.findAdmin(adminAccount);
		if (admin != null&&admin.getAdminpassword().equals(adminPassword)) {
			return admin;
		}
		return null;
	}

	@Override
	public void addAdmin(Admin admin) {
		adminDao.addAdmin(admin);

	}

}
