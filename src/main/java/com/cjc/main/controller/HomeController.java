package com.cjc.main.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.daoi.Loan;
import com.cjc.main.model.Employee;
import com.cjc.main.model.Loanproduct;
import com.cjc.main.model.Newclient;
import com.cjc.main.model.Person;
import com.cjc.main.model.Role;
import com.cjc.main.model.User;
import com.cjc.main.servicei.Servicei;

@Controller
public class HomeController {
	@Autowired
	Servicei ser;
	Person p;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String m1()
	{
		System.out.println("hello");
		return "index";
	}
	/*@RequestMapping(value="/about")
	public String m2()
	{
		System.out.println("hello");
		return "about";
	}
	*/@RequestMapping(value="/about")
	public String m3()
	{
		
		System.out.println("hello");
		return "about";
	}@RequestMapping(value="/services")
	public String m4(Model model)
	{
		System.out.println("hello");
		List<Loanproduct> list=	ser.loanproduct();
		model.addAttribute("list", list);
		
		return "services";
	}@RequestMapping(value="/contact")
	public String m5()
	{
		System.out.println("hello");
		return "contact";
	}
	@RequestMapping(value="/login")
	public String m6()
	{
		System.out.println("hello");
		return "login";
	}
	@RequestMapping(value="/log")
	public String m7(@ModelAttribute Person person,Model model)
	{
		System.out.println(person.getName()+person.getPassword());
		p=ser.login(person);
		System.out.println(p.getName()+p.getPassword());
		System.out.println("ok");
		if(p.getName().equals("admin")&&p.getPassword().equals("admin"))
		{
			List<com.cjc.main.model.Loan>	list=ser.activeloan();
			List<com.cjc.main.model.Loan> li=new ArrayList<>();
			li.clear();
			int i=0;
			int k=0;
			int c=0;
			int d=0;
			int e=0;
			for(com.cjc.main.model.Loan l:list){
				c++;
				if(l.getDefaulter().equals("yes"))
				{

					li.add(l);	
					i++;
				}
				else{
				k++;	
				}
				if(l.getLtype().equals("homeloan"))
				{
					d++;
				}
				else
				{
					e++;
				}
			}
			model.addAttribute("list", li);
			System.out.println(i+" "+k);
			model.addAttribute("ii", i);
			model.addAttribute("kk",k);
			model.addAttribute("cc",c);
			model.addAttribute("dd",d);
			model.addAttribute("ee",e);
			System.out.println("ccc"+c+k+i);

			return "admindash";
		}
		if(p.getName().equals("client")&&p.getPassword().equals("client")){
			
			return "userdashboard";
		}
if(p.getName().equals("salesmanager")&&p.getPassword().equals("salesmanager")){
			
			return "salesmanagerdash";
		}
if(p.getName().equals("advisormanager")&&p.getPassword().equals("advisormanager")){
	List<com.cjc.main.model.Loan>	list=ser.activeloan();
	List<com.cjc.main.model.Loan> li=new ArrayList<>();
	li.clear();
	int i=0;
	int k=0;
	int c=0;
	int d=0;
	int e=0;
	for(com.cjc.main.model.Loan l:list){
		c++;
		if(l.getDefaulter().equals("yes"))
		{

			li.add(l);	
			i++;
		}
		else{
		k++;	
		}
		if(l.getLtype().equals("homeloan"))
		{
			d++;
		}
		else
		{
			e++;
		}
	}
	model.addAttribute("list", li);
	System.out.println(i+" "+k);
	model.addAttribute("ii", i);
	model.addAttribute("kk",k);
	model.addAttribute("cc",c);
	model.addAttribute("dd",d);
	model.addAttribute("ee",e);
	System.out.println("ccc"+c+k+i);


			return "advisormanager";
		}

		return "login";
	}
	
	@RequestMapping(value="/loanproduct")
	public String m8(Model model)
	{
		System.out.println("hello");
		
	List<Loanproduct> list=	ser.loanproduct();
	model.addAttribute("list", list);
		return "loanproduct";
	}
	@RequestMapping(value="/loanproduct1")
	public String m81(Model model)
	{
		System.out.println("hello");
		
	List<Loanproduct> list=	ser.loanproduct();
	model.addAttribute("list", list);
		return "loanproduct1";
	}
	@RequestMapping(value="/backtohome")
	public String m9(Model model)
	{
		System.out.println(p.getName()+p.getPassword());
		System.out.println("ok");
		if(p.getName().equals("admin")&&p.getPassword().equals("admin"))
		{
			List<com.cjc.main.model.Loan>	list=ser.activeloan();
			List<com.cjc.main.model.Loan> li=new ArrayList<>();
			li.clear();
			int i=0;
			int k=0;
			int c=0;
			int d=0;
			int e=0;
			for(com.cjc.main.model.Loan l:list){
				c++;
				if(l.getDefaulter().equals("yes"))
				{

					li.add(l);	
					i++;
				}
				else{
				k++;	
				}
				if(l.getLtype().equals("homeloan"))
				{
					d++;
				}
				else
				{
					e++;
				}
			}
			model.addAttribute("list", li);
			System.out.println(i+" "+k);
			model.addAttribute("ii", i);
			model.addAttribute("kk",k);
			model.addAttribute("cc",c);
			model.addAttribute("dd",d);
			model.addAttribute("ee",e);
			System.out.println("ccc"+c+k+i);

			
						return "admindash";
		}
		return "login";
	}
	@RequestMapping(value="/addproduct")
	public String m10( @ModelAttribute Loanproduct lp ,Model model)
	{
		ser.saveproduct(lp);
		List<Loanproduct> list=	ser.loanproduct();
		model.addAttribute("list", list);
			return "loanproduct";
		
	}
	@RequestMapping(value="/loanstatus")
	public String m11()
	{
		System.out.println("hello");
		return "loanstatus";
	}
	@RequestMapping(value="/activloan")
	public String m12(Model model)
	{
	List<com.cjc.main.model.Loan>	list=ser.activeloan();
	List<com.cjc.main.model.Loan> li=new ArrayList<>();
	li.clear();
	for(com.cjc.main.model.Loan l:list){
		if(l.getLstatus().equals("active"))
		{
			li.add(l);
		}
		
	}
	model.addAttribute("list", li);
	return "activloan";
	}
	@RequestMapping(value="/bikeloan")
	public String m13(Model model)
	{
	List<com.cjc.main.model.Loan>	list=ser.activeloan();
	List<com.cjc.main.model.Loan> li=new ArrayList<>();
	li.clear();
	for(com.cjc.main.model.Loan l:list){
		if(l.getLtype().equals("homeloan"))
		{
			
		}
		else
		{
			li.add(l);
		}
	}
	model.addAttribute("list", li);
	return "bikeloan";
	}
	@RequestMapping(value="/inactivloan")
	public String m14(Model model)
	{
	List<com.cjc.main.model.Loan>	list=ser.activeloan();
	List<com.cjc.main.model.Loan> li=new ArrayList<>();
	li.clear();
	for(com.cjc.main.model.Loan l:list){
		if(l.getLstatus().equals("inactive"))
		{
			li.add(l);
		}	
	}
	model.addAttribute("list", li);
	return "inactiveloan";
	}
	
	@RequestMapping(value="/homeloan")
	public String m15(Model model)
	{
	List<com.cjc.main.model.Loan>	list=ser.activeloan();
	List<com.cjc.main.model.Loan> li=new ArrayList<>();
	li.clear();
	for(com.cjc.main.model.Loan l:list){
		if(l.getLtype().equals("homeloan"))
		{

			li.add(l);	
		}
		
	}
	model.addAttribute("list", li);
	return "bikeloan";
	}
	@RequestMapping(value="/npa")
	public String m16(Model model)
	{
	List<com.cjc.main.model.Loan>	list=ser.activeloan();
	List<com.cjc.main.model.Loan> li=new ArrayList<>();
	li.clear();
	int i=0;
	int k=0;
	
	for(com.cjc.main.model.Loan l:list){
		if(l.getDefaulter().equals("yes"))
		{

			li.add(l);	
			i++;
		}
		else{
		k++;	
		}
	}
	model.addAttribute("list", li);
	System.out.println(i+" "+k);
	model.addAttribute("ii", i);
	model.addAttribute("kk",k);
	return "npa";
	}
	@RequestMapping(value="/npa1")
	public String m167(Model model)
	{
	List<com.cjc.main.model.Loan>	list=ser.activeloan();
	List<com.cjc.main.model.Loan> li=new ArrayList<>();
	li.clear();
	int i=0;
	int k=0;
	
	for(com.cjc.main.model.Loan l:list){
		if(l.getDefaulter().equals("yes"))
		{

			li.add(l);	
			i++;
		}
		else{
		k++;	
		}
	}
	model.addAttribute("list", li);
	System.out.println(i+" "+k);
	model.addAttribute("ii", i);
	model.addAttribute("kk",k);
	return "npa1";
	}

	@RequestMapping(value="/newclientconfirmation")
	public String m17(Model model)
	{
		List<Newclient> list2=new ArrayList<>();
		System.out.println("hello");
	List<Newclient>	list=ser.newclient();
	for(Newclient li:list)
	{
		if(li.getNcstatus().equals("salemanager"))
		{
			list2.add(li);
		}
		else
		{
			
		}
	}
	
	model.addAttribute("list", list2);
		return "newclientconfirmation";
	}
	@RequestMapping(value="/abc")
	public String m18(@RequestParam(name="id")int id,Model model)
	{
		System.out.println(id);
		ser.update(id);
		List<Newclient> list2=new ArrayList<>();
		System.out.println("hello");
	List<Newclient>	list=ser.newclient();
	for(Newclient li:list)
	{
		if(li.getNcstatus().equals("salemanager"))
		{
			list2.add(li);
		}
		if(li.getNcstatus().equals("advisormanager"))
		{
			list2.add(li);
		}
	}
	model.addAttribute("list", list2);
		return "newclientconfirmation";
	}
	@RequestMapping(value="/register")
	public String m19()
	{
		System.out.println("hello");
		return "register";
	}
	@RequestMapping(value="/registerdata")
	public String m20(@ModelAttribute Employee ee,@ModelAttribute Role r,Model model)
	{
		System.out.println(p.getName()+p.getPassword()+r.getRname());
		Role role=	ser.findrole(r.getRname());
		System.out.println(role.getRid());
		ee.setRole(role);
		Person po=new Person();
		po.setName(ee.getName());
		po.setAddress(ee.getAddress());
		po.setEmail(ee.getEmail());
		po.setMobileno(ee.getMobileno());
		po.setPassword(ee.getPassword());
		po.setRole(role);
		ser.saveperson(po);
		System.out.println("ok");
		if(p.getName().equals("admin")&&p.getPassword().equals("admin"))
		{
			
			List<com.cjc.main.model.Loan>	list=ser.activeloan();
			List<com.cjc.main.model.Loan> li=new ArrayList<>();
			li.clear();
			int i=0;
			int k=0;
			int c=0;
			int d=0;
			int e=0;
			for(com.cjc.main.model.Loan l:list){
				c++;
				if(l.getDefaulter().equals("yes"))
				{

					li.add(l);	
					i++;
				}
				else{
				k++;	
				}
				if(l.getLtype().equals("homeloan"))
				{
					d++;
				}
				else
				{
					e++;
				}
			}
			model.addAttribute("list", li);
			System.out.println(i+" "+k);
			model.addAttribute("ii", i);
			model.addAttribute("kk",k);
			model.addAttribute("cc",c);
			model.addAttribute("dd",d);
			model.addAttribute("ee",e);
			System.out.println("ccc"+c+k+i);

			
			
			
			
			
						return "admindash";
		}
		return "login";

	}
	@RequestMapping(value="/listofemployee")
	public String m21(Model model)
	{
	List<Employee>	list=ser.allemployeee();
	System.out.println(list);
	model.addAttribute("list",list);
	
	return "listofemployee";
	}
	@RequestMapping(value="/userregister")
	public String m22(@ModelAttribute User user)
	{
		if(user!=null)
		{
		System.out.println(user.getAddress()+user.getEmail()+user.getMobileno());
		ser.saveuser(user);
		
		}
		return "index";
	}
	@RequestMapping(value="/userlist")
	public String m23(Model model)
	{
		List<User> list=	ser.getalluser();
		model.addAttribute("list", list);
		return "userlist";
	}
	@RequestMapping(value="/uconfirm")
	public String m24(Model model)
	{
		List<User> list=	ser.getalluser();
		model.addAttribute("list", list);
		return "userconfirm";
	}
	@RequestMapping(value="/pqr")
	public String m25(Model model,@RequestParam (name="id")int id)
	{
		System.out.println(id);
	User	u=ser.getuser(id);
	Person p=new Person();
	p.setName(u.getName());
	p.setEmail(u.getEmail());
	p.setMobileno(u.getMobileno());
	p.setAddress(u.getAddress());
	p.setPassword(u.getPassword());
		Role r=ser.findrole("client");
		p.setRole(r);
		ser.saveperson(p);
		ser.delet(u);
		
	List<User> list=ser.getalluser();
		model.addAttribute("list", list);
		return "userconfirm";
	}
	@RequestMapping(value="/adduser")
	public String m26(Model model)
	{
		return "registeruser";
	}
}
