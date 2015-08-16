package com.gnjbs.dao;


import com.gnjbs.domain.Employee;
import org.hibernate.*;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transactional;
import java.io.Serializable;
import java.util.List;

public class DataDaoImpl  implements DataDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Employee employee) throws  HibernateException{

		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(employee);
		tx.commit();
		Serializable id = session.getIdentifier(employee);
		session.close();
		return (Integer) id;
	}




	@Override
	public List<Employee> getList(int pageNumber) throws  HibernateException {

		int pageSize = 10;
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(Employee.class);
		criteria.setFirstResult((pageNumber - 1) * pageSize);
		criteria.setMaxResults(pageSize);
		List<Employee> employees = (List<Employee>) criteria.list();
		session.getTransaction().commit();
		session.close();
		return  employees;
	}

	@Override
	public Employee getRowById(int id) throws  HibernateException{

		Session session = sessionFactory.openSession();
		Employee employee = (Employee) session.load(Employee.class, id);
		return employee;


	}

	@Override
	public long getMaxPages() {
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(Employee.class);
		criteria.setProjection(Projections.rowCount());
		long param = (long) criteria.list().get(0);
		long countPages = Math.round(param/10);
		session.close();
		return countPages;

	}

	@Override
	public void updateRow(Employee employee) {
		try {
				Session session = sessionFactory.openSession();
				Transaction tx = session.beginTransaction();
				Employee emp = (Employee) session.load(Employee.class, employee.getId());
				emp.setName(employee.getName());
				emp.setAge(employee.getAge());
				emp.setIsAdmin(employee.getIsAdmin());
				tx.commit();
				session.close();
		}
		catch (HibernateException e){
				e.printStackTrace();

		}
	}


	@Override
	public int deleteRow(int id)throws  HibernateException {

		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Employee employee = (Employee) session.load(Employee.class, id);
		session.delete(employee);
		tx.commit();
		Serializable ids = session.getIdentifier(employee);
		session.close();
		return (Integer) ids;
	}

	@Override
	public List<Employee> getSearchList(String searchItem) throws  HibernateException {

		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Employee> employeeSearchList = session.createQuery("from Employee WHERE name = '"+searchItem+"'").list();
		session.close();
		return employeeSearchList;

	}

}
