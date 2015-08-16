package com.gnjbs.services;

import com.gnjbs.dao.DataDao;
import com.gnjbs.domain.Employee;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class DataServiceImpl implements DataService {

	@Autowired
	DataDao dataDao;

	@Override
	public int insertRow(Employee employee) {
		return dataDao.insertRow(employee);
	}

	@Override
	public List<Employee> getList(int page) {
		return dataDao.getList(page);
	}

	@Override
	public List<Employee> getSearchList(String name) {
		return dataDao.getSearchList(name);
	}

	@Override
	public Employee getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public long getMaxPages() {
		return dataDao.getMaxPages();
	}

	@Override
	public void updateRow(Employee employee) {
		dataDao.updateRow(employee);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}

}
