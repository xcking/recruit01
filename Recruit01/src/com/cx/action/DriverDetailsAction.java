package com.cx.action;

import com.cx.biz.DriverBiz;
import com.cx.biz.DriverDetailsBiz;
import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;
import com.opensymphony.xwork2.ModelDriven;

public class DriverDetailsAction extends BaseAction implements ModelDriven<Driverdetails> {
	private Driverdetails driverdetails = new Driverdetails();
	private DriverDetailsBiz driverDetailsBiz;
	private int driverId;
	

	

	public int getDriverId() {
		return driverId;
	}

	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}

	public void setDriverDetailsBiz(DriverDetailsBiz driverDetailsBiz) {
		this.driverDetailsBiz = driverDetailsBiz;
	}

	@Override
	public Driverdetails getModel() {
		return driverdetails;
	}
	/*
	 * 跳转用户详细信息页面
	 * */
	public String toDetails(){
		return "toDetails";
	}
	/*
	 * 将用户详细信息上传至数据库并更新用户
	 * */
	public String doDetails(){
		Driver driver = (Driver) session.getAttribute("driver");
		driverdetails.setDriver(driver);
		driverdetails.setDriverPoint(200);
		driverDetailsBiz.addDetails(driverdetails);
		Driverdetails driverdetails1 = driverDetailsBiz.findDetailByDriver(driver);
		driver.setDriverdetails(driverdetails1);
		session.setAttribute("driver", driver);
		return "getAllJob";
	}
	public String findDetailsByDriver(){
		Driver driver = new Driver();
		driver.setDriverId(driverId);
		Driverdetails driverdetails1 = driverDetailsBiz.findDetailByDriver(driver);
		if (driverdetails1 != null) {
			request.setAttribute("driverdetails", driverdetails1);
			return "toAppDriverDetails";
		}
		return "error";
	}
	/*
	 * 用戶修改個人信息
	 */
	public String updateDetails(){
		Driver driver = (Driver) session.getAttribute("driver");
		driverdetails.setDriver(driver);
		driverDetailsBiz.updateDetails(driverdetails);
		driver.setDriverdetails(driverdetails);
		session.setAttribute("driver", driver);
		return "updateSuccess";
	}
}
