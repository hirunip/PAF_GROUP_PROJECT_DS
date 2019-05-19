package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.model.Payment;
import com.example.demo.model.Product;
import com.example.demo.repository.PaymentRepository;

@Service
@Transactional
public class PaymentService {

	private final PaymentRepository paymentRepository;

	public PaymentService(PaymentRepository paymentRepository) {
		this.paymentRepository = paymentRepository;
	}

	public void savemypayment(Payment payment) {

		paymentRepository.save(payment);
	}

	public List<Payment> showAllPayments() {

		List<Payment> payments = new ArrayList<Payment>();
		for (Payment payment : paymentRepository.findAll()) {

			payments.add(payment);

		}

		return payments;
	}

	public void deletemypayment(int payid) {

		paymentRepository.deleteById(payid);
	}

	public Payment editPayment(int payid) {
		
		return paymentRepository.findById(payid).orElse(null);

		 
	}
}
