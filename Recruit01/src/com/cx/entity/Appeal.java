package com.cx.entity;

/**
 * Appeal entity. @author MyEclipse Persistence Tools
 */
public class Appeal extends AbstractAppeal implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Appeal() {
	}
	/** full constructor */
	public Appeal(Driver driver, Job job, String state, String content) {
		super(driver, job, state, content);
		// TODO Auto-generated constructor stub
	}



}
