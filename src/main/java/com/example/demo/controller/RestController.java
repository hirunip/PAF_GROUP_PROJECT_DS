 package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Product;
import com.example.demo.services.ProductService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private ProductService productService;
	
	
	
	
	@GetMapping("saveproduct")
	public String saveProduct(@RequestParam String pname , @RequestParam String brand , @RequestParam double price , @RequestParam String pcode) {
		
		Product product = new Product(pname , brand , price , pcode);
		productService.savemyproduct(product);
		return "Product Saved!!";
	}

}
