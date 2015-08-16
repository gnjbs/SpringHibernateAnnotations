package com.gnjbs.domain;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Employee {

	@Id
	@GeneratedValue
	private int id;

	@Column(name="name")
	private String name;

	@Column(name="age", nullable= false)
	private int age;

	@Column (name="isAdmin")
	private boolean isAdmin;

	@Column (name = "createdDate")
	private String createdDate;

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = new java.util.Date ().toString ();
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getId() {

		return id;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public void setIsAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public boolean getIsAdmin() {

		return isAdmin;
	}


}
