package com.rt.entities;

public class DoctorEntities {
    

	private int id;
	private String fname;
	private String sname;
	private String specialization;
	private String gender;
	private String dob;
	private String mob;
	
	public DoctorEntities(){};
	
	public DoctorEntities(int id, String fname, String sname, String specialization, String gender, String dob,
			String mob) {
		super();
		this.id = id;
		this.fname = fname;
		this.sname = sname;
		this.specialization = specialization;
		this.gender = gender;
		this.dob = dob;
		this.mob = mob;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getSpecialization() {
		return specialization;
	}


	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getMob() {
		return mob;
	}


	public void setMob(String mob) {
		this.mob = mob;
	}
	
	
	
	
}
