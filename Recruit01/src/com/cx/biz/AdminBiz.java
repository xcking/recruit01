package com.cx.biz;

import com.cx.entity.Admin;

public interface AdminBiz {
	public Admin loginAdmin(String adminAccount,String adminPassword);
	public void addAdmin(Admin admin);
}
