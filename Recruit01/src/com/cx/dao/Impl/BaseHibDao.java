package com.cx.dao.Impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public abstract class BaseHibDao extends HibernateDaoSupport{
	public void add(Object item){
		getHibernateTemplate().save(item);
	}
	
	public void delete(Class clazz, Serializable id){
		getHibernateTemplate().delete(getHibernateTemplate().get(clazz, id));
	}
	
	public void update(Object item){
		getHibernateTemplate().update(item);
	}
	
	public Object get(Class clazz, Serializable id){
		return getHibernateTemplate().get(clazz, id);
	}
	
	public <T> T get1(Class<T> clazz, Serializable id){
		return getHibernateTemplate().get(clazz, id);
	}
	public void update(String hql, Map<String, Object> map){
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
		Query query = session.createQuery(hql);
		query.setProperties(map);
		query.executeUpdate();
	}
	public void delete(String hql, Map<String, Object> map){
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
//		Session session = getSession();
		Query query = session.createQuery(hql);
		query.setProperties(map);
	}
	public List search(String hql, Map<String, Object> map){
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
//		Session session = getSession();
		Query query = session.createQuery(hql);
		query.setProperties(map);
		return query.list();
	}
	
	public List search(String hql, Map<String, Object> map, int pageNum, int pageSize){
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
//		Session session = getSession();
		Query query = session.createQuery(hql);
		query.setProperties(map);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	public long getCount(String hql, Map<String, Object> map){
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
//		Session session = getSession();
		Query query = session.createQuery(hql);
		query.setProperties(map);
		return  (Long) query.uniqueResult();
	}
}
