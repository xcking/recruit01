package com.cx.dao;

import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public interface DriverDao {
	public Driver findDriverById(int driverId);	//	根据id查询用户
	public Driver findDriverByAccount(String driverAccount);	//输入账户名查询用户
	public void addDriver(Driver driver);
	public void deleteDriver(int driverId);
	public void updateDriver(Driver driver);
	public void updateDriverDetails(Driverdetails driverdetails,int driverId);	//添加用户详细资料信息
}
