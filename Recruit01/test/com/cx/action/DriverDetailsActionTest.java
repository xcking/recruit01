package com.cx.action;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cx.biz.DriverDetailsBiz;
import com.cx.entity.Driver;
import com.cx.entity.Driverdetails;

public class DriverDetailsActionTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}
	private ApplicationContext applicationContext;
	@Before
	public void setUp() throws Exception {
		applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	}

	@Test
	public void test() {
		Driver driver = new Driver();
		driver.setDriverId(101);
		DriverDetailsBiz driverDetailsBiz= (DriverDetailsBiz) applicationContext.getBean("driverDetailsBiz");
		Driverdetails driverdetails =  driverDetailsBiz.findDetailByDriver(driver);
		driverdetails.setDriverLicence("A1");
		driverDetailsBiz.updateDetails(driverdetails);
	}

}
