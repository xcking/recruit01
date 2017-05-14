package com.cx.biz.Impl;

import com.cx.biz.DriverBiz;
import com.cx.dao.DriverDao;
import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public class DriverBizImpl implements DriverBiz {
	private DriverDao driverDao;
	
	public DriverDao getDriverDao() {
		return driverDao;
	}

	public void setDriverDao(DriverDao driverDao) {
		this.driverDao = driverDao;
	}

	@Override
	public Driver driverLogin(String driverAccount,String driverPassword) {
		Driver driver = driverDao.findDriverByAccount(driverAccount);
		if (driver != null) {
			if (driver.getDriverPassword().equals(driverPassword)) {
				return driver;
			}
		}
		return null;
	}

	@Override
	public void driverRegister(Driver driver) {
		driverDao.addDriver(driver);
		
	}

	@Override
	public void updateDriverDetails(Driverdetails driverdetails,int driverId) {
		driverDao.updateDriverDetails(driverdetails, driverId);
	}

	@Override
	public void updateDriver(Driver driver) {
		driverDao.updateDriver(driver);
	}

	

}
