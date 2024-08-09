package com.cjc.main.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.daoi.Employeedaoi;
import com.cjc.main.daoi.Loanproduct;
import com.cjc.main.daoi.NewClientDaoi;
import com.cjc.main.daoi.Persondaoi;
import com.cjc.main.daoi.Roledaoi;
import com.cjc.main.daoi.Userdaoi;
import com.cjc.main.model.Employee;
import com.cjc.main.model.Loan;
import com.cjc.main.model.Newclient;
import com.cjc.main.model.Person;
import com.cjc.main.model.Role;
import com.cjc.main.model.User;
import com.cjc.main.servicei.Servicei;
@Service
public class Serviceimpl implements Servicei{
@Autowired
Persondaoi per;
@Autowired
Loanproduct lp;
@Autowired
com.cjc.main.daoi.Loan l;
@Autowired
NewClientDaoi nc;
@Autowired
Roledaoi rd;
@Autowired
Employeedaoi emp;
@Autowired
Userdaoi ud;


public Person login(Person p)
{
		return per.findAllByNameAndPassword(p.getName(), p.getPassword());	
}

public List<com.cjc.main.model.Loanproduct> loanproduct(){
	return (List<com.cjc.main.model.Loanproduct>) lp.findAll();
}

public void saveproduct(com.cjc.main.model.Loanproduct l){
	lp.save(l);
	System.out.println("save");
}
public List<Loan> activeloan(){
	
return 	(List<Loan>)l.findAll();
}
public List<Newclient> newclient(){
	
return 	(List<Newclient>)nc.findAll();
}

public void update(int id)
{
	 Newclient nclient=nc.findAllByNcid(id);
	 nclient.setNcstatus("admin");
	 nc.save(nclient);
}
public Role findrole(String rname){
return	rd.findAllByRname(rname);
}
public void saveemployee(Employee e){
	emp.save(e);
	System.out.println("saved successfully");
}
public List<Employee> allemployeee(){
	return  (List<Employee>)emp.findAll();
}
public void saveuser(User user){
	ud.save(user);
}
public List<User> getalluser(){
	return (List<User>)ud.findAll();
}
public User getuser(int id){
	return ud.findById(id);
}
public void saveperson(Person person){
	per.save(person);
}
public void delet(User u){
	ud.delete(u);
}
}
