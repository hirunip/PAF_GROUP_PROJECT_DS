package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
	
	@Id
	private int pid;
	private String pname;
	private String brand;
	private double price; 
	private String pcode;
	
	public Product() {
		
		
	}
	
	
	public Product(String pname, String brand, double price, String pcode) {
		super();
		this.pname = pname;
		this.brand = brand;
		this.price = price;
		this.pcode = pcode;
	}
	
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}


	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", brand=" + brand + ", price=" + price + ", pcode=" + pcode
				+ "]";
	}
	
	

}
