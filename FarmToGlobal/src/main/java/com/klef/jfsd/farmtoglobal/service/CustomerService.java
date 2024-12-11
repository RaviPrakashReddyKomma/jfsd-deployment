package com.klef.jfsd.farmtoglobal.service;

import com.klef.jfsd.farmtoglobal.model.Customer;

public interface CustomerService 
{
	public  String customerRegistration(Customer customer );
	public Customer checkCustomerLogin(String email,String password);
	public String updateCustomer(Customer customer);
	Customer getCustomerById(int id);  // Add this line
	 String uploadCustomerImage(int id, byte[] image);
	    byte[] getCustomerImage(int id);
}
