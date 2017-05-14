package com.cx.biz;

import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public interface DriverBiz {
	public Driver driverLogin(String driverAccount,String driverPassword);
	public void driverRegister(Driver driver);
	public void updateDriverDetails(Driverdetails driverdetails,int driverId);
	public void updateDriver(Driver driver);
}
