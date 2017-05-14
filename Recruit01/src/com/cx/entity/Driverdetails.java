package com.cx.entity;

/**
 * Driverdetails entity. @author MyEclipse Persistence Tools
 */
public class Driverdetails extends AbstractDriverdetails implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Driverdetails() {
	}

	/** minimal constructor */
	public Driverdetails(Integer dirverage, String car, String accident) {
		super(dirverage, car, accident);
	}

	/** full constructor */
	public Driverdetails(Driver driver, Integer dirverage, String car,
			String accident, String remarks, String tel, String address,
			Integer driverPoint, String driverLicence, String driverCard) {
		super(driver, dirverage, car, accident, remarks, tel, address, driverPoint,
				driverLicence, driverCard);
		// TODO Auto-generated constructor stub
	}

}
