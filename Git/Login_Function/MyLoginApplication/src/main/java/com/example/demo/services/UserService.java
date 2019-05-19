package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.Repository.UserRepositery;
import com.example.demo.model.User;



@Service
@Transactional
public class UserService {

	private final UserRepositery userRepositery;
	
	public UserService(UserRepositery userRepositery) {
		this.userRepositery = userRepositery;
	}
	
	public void InsertUser(User user) {
		userRepositery.save(user);
	}
	
	public List<User> showUserProfile(){
		List<User> users =  new ArrayList<User>();
		for(User user:userRepositery.findAll()) {
			users.add(user);
		} 
		return users;
	}
	
	public void deleteMyUser(int id) {
		userRepositery.deleteById(id);
	}
	
	public User edituser(int id) {
		Optional<User> user = this.userRepositery.findById(id);
		if (user.isPresent()) {
		    return user.get();
		} else {
		    return null;
		}
	}
	
	
	public User LoginUser(String username,String password) {
		return userRepositery.findByUsernameAndPassword(username, password);
	}
	
	
	
	
	
}
