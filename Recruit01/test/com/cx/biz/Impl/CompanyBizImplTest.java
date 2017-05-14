package com.cx.biz.Impl;

import static org.junit.Assert.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cx.biz.CompanyBiz;
import com.cx.dao.CompanyDao;
import com.cx.dao.HibernateSessionFactory;
import com.cx.entity.Job;

public class CompanyBizImplTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}
	private ApplicationContext applicationContext;
	@Before
	public void setUp() throws Exception {
		applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	}

	@Test
	public void testUpdateCompanyLevel() {
		CompanyBiz companyBiz = (CompanyBiz) applicationContext.getBean("companyBiz");
		companyBiz.updateCompanyLevel(61, "2");
		/*String queryString = "update Company c set c.companyLevel=:companyLevel where c.companyId=:companyId"; 
		Session session = HibernateSessionFactory.getSession();
		Transaction t = session.beginTransaction();
        Query query = session.createQuery(queryString);
        query.setParameter("companyLevel", "1");
        query.setParameter("companyId", 61);
        query.executeUpdate();
        t.commit();
		System.out.println("success");*/
	}

}
