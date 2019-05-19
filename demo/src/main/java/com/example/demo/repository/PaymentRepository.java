package com.example.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Payment;

public interface PaymentRepository extends CrudRepository<Payment, Integer> {

}
