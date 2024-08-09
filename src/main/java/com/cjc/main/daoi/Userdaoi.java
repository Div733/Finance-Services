package com.cjc.main.daoi;

import org.springframework.data.repository.CrudRepository;

import com.cjc.main.model.User;

public interface Userdaoi extends CrudRepository<User, Integer>{
public User findById(int id);
}
