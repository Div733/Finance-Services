package com.cjc.main.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Newclient {
@Id
private int ncid;
private String ncname;
private String ncaddress;
private String ncmobileno;
private String ncstatus;
private double ncincome;
private String ncpreviousloan;
private String ncpreviousloanstatus;
private float ncloanamount;
private int ncloanemi;
private float ncloanemiamount;
public int getNcid() {
	return ncid;
}
public void setNcid(int ncid) {
	this.ncid = ncid;
}
public String getNcname() {
	return ncname;
}
public void setNcname(String ncname) {
	this.ncname = ncname;
}
public String getNcaddress() {
	return ncaddress;
}
public void setNcaddress(String ncaddress) {
	this.ncaddress = ncaddress;
}
public String getNcmobileno() {
	return ncmobileno;
}
public void setNcmobileno(String ncmobileno) {
	this.ncmobileno = ncmobileno;
}
public String getNcstatus() {
	return ncstatus;
}
public void setNcstatus(String ncstatus) {
	this.ncstatus = ncstatus;
}
public double getNcincome() {
	return ncincome;
}
public void setNcincome(double ncincome) {
	this.ncincome = ncincome;
}
public String getNcpreviousloan() {
	return ncpreviousloan;
}
public void setNcpreviousloan(String ncpreviousloan) {
	this.ncpreviousloan = ncpreviousloan;
}
public String getNcpreviousloanstatus() {
	return ncpreviousloanstatus;
}
public void setNcpreviousloanstatus(String ncpreviousloanstatus) {
	this.ncpreviousloanstatus = ncpreviousloanstatus;
}
public float getNcloanamount() {
	return ncloanamount;
}
public void setNcloanamount(float ncloanamount) {
	this.ncloanamount = ncloanamount;
}
public int getNcloanemi() {
	return ncloanemi;
}
public void setNcloanemi(int ncloanemi) {
	this.ncloanemi = ncloanemi;
}
public float getNcloanemiamount() {
	return ncloanemiamount;
}
public void setNcloanemiamount(float ncloanemiamount) {
	this.ncloanemiamount = ncloanemiamount;
}


}
