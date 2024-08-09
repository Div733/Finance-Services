package com.cjc.main.servicei;

import java.util.List;

import com.cjc.main.model.Employee;
import com.cjc.main.model.Loan;
import com.cjc.main.model.Loanproduct;
import com.cjc.main.model.Newclient;
import com.cjc.main.model.Person;
import com.cjc.main.model.Role;
import com.cjc.main.model.User;

public interface Servicei {
public Person login(Person p);
public List<Loanproduct> loanproduct();
public void saveproduct(Loanproduct lp);
public List<Loan> activeloan();
public List<Newclient> newclient();
public void update(int id);
public Role findrole(String rname);
public void saveemployee(Employee e);
public List<Employee> allemployeee();
public void saveuser(User user);
public List<User> getalluser();
public User getuser(int id);
public void saveperson(Person person);
public void delet(User u);
}
