package com.cx.action;

import com.cx.biz.DriverBiz;
import com.cx.biz.DriverDetailsBiz;
import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;
import com.opensymphony.xwork2.ModelDriven;

public class DriverAction extends BaseAction implements ModelDriven<Driver>{
	private Driver driver = new Driver();;
	private DriverBiz driverBiz;
	private DriverDetailsBiz driverDetailsBiz;
	public DriverDetailsBiz getDriverDetailsBiz() {
		return driverDetailsBiz;
	}

	public void setDriverDetailsBiz(DriverDetailsBiz driverDetailsBiz) {
		this.driverDetailsBiz = driverDetailsBiz;
	}

	@Override
	public Driver getModel() {
		return driver;
	}
	
	public DriverBiz getDriverBiz() {
		return driverBiz;
	}

	public void setDriverBiz(DriverBiz driverBiz) {
		this.driverBiz = driverBiz;
	}

	public String toLogin(){
		return "toLogin";
	}
	public String doLogin(){
		Driver driver1 = driverBiz.driverLogin(driver.getDriverAccount(), driver.getDriverPassword());
		if (driver1 !=null) {
			Driverdetails driverdetails= driverDetailsBiz.findDetailByDriver(driver1);
			if (driverdetails ==null) {
				session.setAttribute("driver", driver1);
				return "toAddDetails";
			}else {
				driver1.setDriverdetails(driverdetails);
				session.setAttribute("driver", driver1);
				return "toHomePage";
			}
		}
		return "error";
	}
	
	public String toRegister(){
		return "toRegister";
	}
	public String doRegister(){
		driverBiz.driverRegister(driver);
		return "toLogin";
	}
	public String toDetails(){
		return "toDetails";
	}
	public String updateHire(){
		
		driver.setDriverHire("1");
		driverBiz.updateDriver(driver);
		return null;
	}
	public String UpdateDriverInfo(){
		return "toHomePage";
	}
}
