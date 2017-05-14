package com.cx.dao.Impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cx.dao.DriverDetailsDao;
import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public class DriverDetailsDaoImpl extends BaseHibDao implements DriverDetailsDao {


	@Override
	public Driverdetails findDetailsByDriver(Driver driver) {
		String hql = "from Driverdetails  where driver = :driver";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driver", driver);
		List<Driverdetails> dList = super.search(hql, map);
		if (dList != null) {
			for (Driverdetails driverdetails : dList) {
				return driverdetails;
			}
		}
		return null;
	}

	@Override
	public void addDetails(Driverdetails driverdetails) {
		super.add(driverdetails);
	}

	@Override
	public void updateDetails(Driverdetails driverdetails,int driverId) {
		String hql = "update Driverdetails dd set dd.driver.driverId =:driverId where dd.driverDetailsId =:driverDetailsId";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("driverId", driverId);
		map.put("driverDetailsId", driverdetails.getDriverDetailsId());
		super.update(hql, map);
	}

	@Override
	public Driverdetails finddetailsById(int driverdetailsId) {
		return (Driverdetails) super.get(Driverdetails.class, driverdetailsId);
	}

	@Override
	public void updateDetails(Driverdetails driverdetails) {
		super.update(driverdetails);
	}

}
