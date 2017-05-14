package com.cx.dao;

import java.util.List;

import com.cx.entity.Appraise;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public interface AppraiseDao {
	public void addAppraise(Appraise appraise) throws Exception;
	public void deleteAppraise(int id) throws Exception;
	public List<Appraise> searchAppraiseByJob(Job job) throws Exception;
	public List<Appraise> searchAppraiseByDriver(Driver driver) throws Exception;
	public void deleteAppraiseByJob(Job job) throws Exception;
}
