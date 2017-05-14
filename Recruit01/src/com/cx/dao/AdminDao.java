package com.cx.dao;

import com.cx.entity.Admin;

public interface AdminDao {
	public Admin findAdmin(String adminAccount);
	public void addAdmin(Admin admin);
}
