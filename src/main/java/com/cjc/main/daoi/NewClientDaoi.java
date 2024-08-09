package com.cjc.main.daoi;

import org.springframework.data.repository.CrudRepository;

import com.cjc.main.model.Newclient;

public interface NewClientDaoi extends CrudRepository<Newclient, Integer>{
public Newclient findAllByNcid(int id);
}
