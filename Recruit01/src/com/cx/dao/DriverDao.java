package com.cx.dao;

import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public interface DriverDao {
	public Driver findDriverById(int driverId);	//	����id��ѯ�û�
	public Driver findDriverByAccount(String driverAccount);	//�����˻�����ѯ�û�
	public void addDriver(Driver driver);
	public void deleteDriver(int driverId);
	public void updateDriver(Driver driver);
	public void updateDriverDetails(Driverdetails driverdetails,int driverId);	//����û���ϸ������Ϣ
}
