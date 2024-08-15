package com.entity;

public class AppliedJobs {
	private int id;
	private String emp_name;
	private String title;
	private String category;
	private String name;
	private String email;
	private String qualification;
	public AppliedJobs() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AppliedJobs(String emp_name, String title, String category, String name, String email, String qualification) {
		super();
		this.emp_name = emp_name;
		this.title= title;
		this.category = category;
		this.name = name;
		this.email = email;
		this.qualification = qualification;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	
}
