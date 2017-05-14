package com.cx.entity;

import java.math.BigDecimal;

/**
 * AbstractDriverdetails entity provides the base persistence definition of the
 * Driverdetails entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractDriverdetails implements java.io.Serializable {

	// Fields

	private Integer driverDetailsId;
	private Driver driver;
	private Integer dirverage;
	private String car;
	private String accident;
	private String remarks;
	private String tel;
	private String address;
	private Integer driverPoint;
	private String driverLicence;
	private String driverCard;

	// Constructors

	/** default constructor */
	public AbstractDriverdetails() {
	}

	/** minimal constructor */
	public AbstractDriverdetails(Integer dirverage, String car, String accident) {
		this.dirverage = dirverage;
		this.car = car;
		this.accident = accident;
	}

	/** full constructor */
	public AbstractDriverdetails(Driver driver, Integer dirverage, String car,
			String accident, String remarks, String tel, String address,
			Integer driverPoint, String driverLicence, String driverCard) {
		this.driver = driver;
		this.dirverage = dirverage;
		this.car = car;
		this.accident = accident;
		this.remarks = remarks;
		this.tel = tel;
		this.address = address;
		this.driverPoint = driverPoint;
		this.driverLicence = driverLicence;
		this.driverCard = driverCard;
	}

	// Property accessors

	public Integer getDriverDetailsId() {
		return this.driverDetailsId;
	}

	public void setDriverDetailsId(Integer driverDetailsId) {
		this.driverDetailsId = driverDetailsId;
	}

	public Driver getDriver() {
		return this.driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	public Integer getDirverage() {
		return this.dirverage;
	}

	public void setDirverage(Integer dirverage) {
		this.dirverage = dirverage;
	}

	public String getCar() {
		return this.car;
	}

	public void setCar(String car) {
		this.car = car;
	}

	public String getAccident() {
		return this.accident;
	}

	public void setAccident(String accident) {
		this.accident = accident;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getDriverPoint() {
		return this.driverPoint;
	}

	public void setDriverPoint(Integer driverPoint) {
		this.driverPoint = driverPoint;
	}

	public String getDriverLicence() {
		return this.driverLicence;
	}

	public void setDriverLicence(String driverLicence) {
		this.driverLicence = driverLicence;
	}

	public String getDriverCard() {
		return driverCard;
	}

	public void setDriverCard(String driverCard) {
		this.driverCard = driverCard;
	}


}