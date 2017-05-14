package com.cx.biz;

import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public interface DriverDetailsBiz {
	public Driverdetails findDetailByDriver(Driver driver);
	public Driverdetails finddetailsById(int driverdetailsId);
	public void addDetails(Driverdetails driverdetails);
	public void updateDetails(Driverdetails driverdetails,int driverId);
	public void updateDetails(Driverdetails driverdetails);
}
