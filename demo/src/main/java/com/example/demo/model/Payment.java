package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class Payment {

	@Id
	private int payid;
	private double total;
	private String payType;
	private int phoneNumber;
	private String email;
	private String address;
	
	public Payment() {
		
	}

	public Payment(double total, String payType, int phoneNumber, String email, String address) {
		super();
		this.total = total;
		this.payType = payType;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.address = address;
	}

	public int getPayid() {
		return payid;
	}

	public void setPayid(int payid) {
		this.payid = payid;
	}

	
	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public int getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Payment [payid=" + payid + ", total=" + total + ", payType=" + payType
				+ ", phoneNumber=" + phoneNumber + ", email=" + email + ", address=" + address + ", getPayid()="
				+ getPayid() + ", getTotal()=" + getTotal() + ", getPayType()="
				+ getPayType() + ", getPhoneNumber()=" + getPhoneNumber() + ", getEmail()=" + getEmail()
				+ ", getAddress()=" + getAddress() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	

}
