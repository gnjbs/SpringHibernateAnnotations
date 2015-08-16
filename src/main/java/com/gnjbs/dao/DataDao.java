package com.gnjbs.dao;

import com.gnjbs.domain.Employee;

import java.util.List;

public interface DataDao {
	public int insertRow(Employee employee);

	public List<Employee> getList(int Page);

	public Employee getRowById(int id);

	public long getMaxPages();

	public void  updateRow(Employee employee);

	public int deleteRow(int id);

	public List<Employee> getSearchList(String searchItem);



}
