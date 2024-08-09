package com.cjc.main.daoi;

import org.springframework.data.repository.CrudRepository;

import com.cjc.main.model.Role;

public interface Roledaoi extends CrudRepository<Role, Integer>{
public Role findAllByRname(String rname);
}
