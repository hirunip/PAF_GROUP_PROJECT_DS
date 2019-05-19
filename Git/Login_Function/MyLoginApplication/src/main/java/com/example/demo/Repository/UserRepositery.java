package com.example.demo.Repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.User;

public interface UserRepositery  extends CrudRepository<User, Integer>{
	
	public User findByUsernameAndPassword(String username, String password);

}
