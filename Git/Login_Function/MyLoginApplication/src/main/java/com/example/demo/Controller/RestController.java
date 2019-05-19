package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.User;
import com.example.demo.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String hello() {
		return "This  is home page";
	}
	
	@GetMapping("Insertuser")
	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int phone, @RequestParam String address, @RequestParam String email, @RequestParam String password) {
		
		User user = new User(username,firstname,lastname,phone,address,email,password);
		userService.InsertUser(user);
		return "User Saved";
	}

}
