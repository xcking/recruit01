package com.cx.biz;

import java.util.List;

import com.cx.entity.Appeal;
import com.cx.entity.Driver;
import com.cx.entity.Job;

public interface AppealBiz {
	public void addAppeal(Appeal appeal);
	public List<Appeal> getAllAppeal();
	public void deleteAppeal(Job job);
	public Appeal getById(int id);
	public void updateAppeal(Appeal appeal);
	public List<Appeal> getByDriver(Driver driver);
}
