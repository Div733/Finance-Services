package com.cjc.main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String name;
private String address;
private String mobileno;
private String email;
private String password;
private String ltype;
private String lamount;
public String getLamount() {
	return lamount;
}
public void setLamount(String lamount) {
	this.lamount = lamount;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getMobileno() {
	return mobileno;
}
public void setMobileno(String mobileno) {
	this.mobileno = mobileno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getLtype() {
	return ltype;
}
public void setLtype(String ltype) {
	this.ltype = ltype;
}

}
