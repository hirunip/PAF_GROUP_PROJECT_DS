package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Payment;
import com.example.demo.model.Product;
import com.example.demo.services.PaymentService;
import com.example.demo.services.ProductService;

@Controller
@ComponentScan(basePackages = { "com.example.demo.controller" })
public class ApplicationController {

	@Autowired
	private ProductService productService;
	@Autowired
	private PaymentService paymentService;

	@RequestMapping("/welcome")
	public String welcome(HttpServletRequest request) {

		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}

	@RequestMapping("/addProduct")
	public String addition(HttpServletRequest request) {

		request.setAttribute("mode", "MODE_ADDPRODUCT");
		return "welcome";
	}

	@PostMapping("/save-product")
	public String addProduct(@ModelAttribute Product product, BindingResult bindingResult, HttpServletRequest request) {
		productService.savemyproduct(product);
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";

	}

	@GetMapping("/show-products")
	public String showAllProducts(HttpServletRequest request) {
		request.setAttribute("products", productService.showAllProducts());
		request.setAttribute("mode", "ALL_PRODUCTS");
		return "welcome";
	}

	@RequestMapping("/delete-product")
	public String deleteProduct(@RequestParam int pid, HttpServletRequest request) {
		productService.deletemyproduct(pid);
		request.setAttribute("products", productService.showAllProducts());
		request.setAttribute("mode", "ALL_PRODUCTS");
		return "welcome";
	}

	@RequestMapping("/edit-product")
	public String editProduct(@RequestParam int pid, HttpServletRequest request) {
		request.setAttribute("product", productService.editProduct(pid));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcome";
	}

	
	
	
	@RequestMapping("/addPayment")
	public String additionPayment(HttpServletRequest request) {

		request.setAttribute("mode", "MODE_ADDPAYMENTS");
		return "Payment";
	}

	@PostMapping("/savePayment")
	public String addPayment(@ModelAttribute Payment payment, BindingResult bindingResult, HttpServletRequest request) {
		paymentService.savemypayment(payment);
		request.setAttribute("mode", "ALL_PAYMENTS");
		return "Payment";

	}

	@GetMapping("/show-payments")
	public String showAllPayments(HttpServletRequest request) {
		request.setAttribute("payment", paymentService.showAllPayments());
		request.setAttribute("mode", "ALL_PAYMENTS");
		return "Payment";
	}

	@RequestMapping("/delete-payment")
	public String deletePayment(@RequestParam int payid, HttpServletRequest request) {
		paymentService.deletemypayment(payid);
		request.setAttribute("payment", paymentService.showAllPayments());
		request.setAttribute("mode", "ALL_PAYMENTS");
		return "Payment";
	}

	@GetMapping("/edit-payment")
	public String editPayment(@RequestParam int payid, HttpServletRequest request) {
		request.setAttribute("payment", paymentService.editPayment(payid));
		request.setAttribute("mode", "MODE_UPDATE1");
		return "Payment";
	}

}
