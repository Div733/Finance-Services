package com.cjc.main.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Loan {
@Id
private int lid;
private String cname;
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
private String lstatus;
private String ltype;
private double lamout;
private int ROI;
private int lduration;
private int lemipaid;
private int totalemi;
private String defaulter;
private String eligiblefornextloan;
private double emiamount;
public double getEmiamount() {
	return emiamount;
}
public void setEmiamount(double emiamount) {
	this.emiamount = emiamount;
}
public int getLid() {
	return lid;
}
public void setLid(int lid) {
	this.lid = lid;
}
public String getLstatus() {
	return lstatus;
}
public void setLstatus(String lstatus) {
	this.lstatus = lstatus;
}
public String getLtype() {
	return ltype;
}
public void setLtype(String ltype) {
	this.ltype = ltype;
}
public double getLamout() {
	return lamout;
}
public void setLamout(double lamout) {
	this.lamout = lamout;
}
public int getROI() {
	return ROI;
}
public void setROI(int rOI) {
	ROI = rOI;
}
public int getLduration() {
	return lduration;
}
public void setLduration(int lduration) {
	this.lduration = lduration;
}
public int getLemipaid() {
	return lemipaid;
}
public void setLemipaid(int lemipaid) {
	this.lemipaid = lemipaid;
}
public int getTotalemi() {
	return totalemi;
}
public void setTotalemi(int totalemi) {
	this.totalemi = totalemi;
}
public String getDefaulter() {
	return defaulter;
}
public void setDefaulter(String defaulter) {
	this.defaulter = defaulter;
}
public String getEligiblefornextloan() {
	return eligiblefornextloan;
}
public void setEligiblefornextloan(String eligiblefornextloan) {
	this.eligiblefornextloan = eligiblefornextloan;
}



}
