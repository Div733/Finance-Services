package com.cjc.main.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Loanproduct {
@Id
private int lid;
private String productname;
private String productdescription;
public int getLid() {
	return lid;
}
public void setLid(int lid) {
	this.lid = lid;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public String getProductdescription() {
	return productdescription;
}
public void setProductdescription(String productdescription) {
	this.productdescription = productdescription;
}

}
