package com.cx.dao.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.DriverDao;
import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public class DriverDaoImpl extends BaseHibDao implements DriverDao {

	@Override
	public Driver findDriverById(int driverId) {
		return (Driver) super.get(Driver.class, driverId);
	}

	@Override
	public void addDriver(Driver driver) {
		super.add(driver);

	}

	@Override
	public void deleteDriver(int driverId) {
		super.delete(Driver.class, driverId);

	}

	@Override
	public void updateDriver(Driver driver) {
		super.update(driver);

	}

	@Override
	public Driver findDriverByAccount(String driverAccount) {
		String hql = "from Driver where driverAccount = :driverAccount";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driverAccount", driverAccount);
		List<Driver> dList = super.search(hql, map);
		if (dList != null) {
			for (Driver driver1 : dList) {
				return driver1;
			}
		}
		return null;
	}

	@Override
	public void updateDriverDetails(Driverdetails driverdetails,int driverId) {
		String hql = "update Driver di set di.driverdetails =:driverdetails where di.driverId =:driverId";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driverdetails", driverdetails);
		map.put("driverId", driverId);
		super.update(hql, map);
			
		
	}

	

	

}
