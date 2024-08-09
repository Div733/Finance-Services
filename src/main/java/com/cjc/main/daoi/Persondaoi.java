package com.cjc.main.daoi;

import org.springframework.data.repository.CrudRepository;

import com.cjc.main.model.Person;

public interface Persondaoi extends CrudRepository<Person, Integer> {
public Person findAllByNameAndPassword(String name,String password);
}
