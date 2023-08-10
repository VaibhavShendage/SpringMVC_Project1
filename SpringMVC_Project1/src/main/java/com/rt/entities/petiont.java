package com.rt.entities;

public class petiont {
private int id;
private String fname;
private String sname;
private String age;
private String mob;
private String adr;
private String doctor;
private String date;
private String disease;

public petiont(){};
public petiont(int id, String fname, String sname, String age, String mob, String adr, String doctor, String date,
		String disease) {
	super();
	this.id = id;
	this.fname = fname;
	this.sname = sname;
	this.age = age;
	this.mob = mob;
	this.adr = adr;
	this.doctor = doctor;
	this.date = date;
	this.disease = disease;
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
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getMob() {
	return mob;
}
public void setMob(String mob) {
	this.mob = mob;
}
public String getAdr() {
	return adr;
}
public void setAdr(String adr) {
	this.adr = adr;
}
public String getDoctor() {
	return doctor;
}
public void setDoctor(String doctor) {
	this.doctor = doctor;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getDisease() {
	return disease;
}
public void setDisease(String disease) {
	this.disease = disease;
}








}







