package com.klef.jfsd.farmtoglobal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public String customerRegistration(Customer customer) {
        customerRepository.save(customer);
        return "Customer registered successfully!";
    }

    @Override
    public Customer checkCustomerLogin(String email, String password) {
        return customerRepository.checkCustomerLogin(email, password);
    }
    @Override
    public String updateCustomer(Customer customer) {
        Customer existingCustomer = customerRepository.findById(customer.getId()).orElseThrow(() -> new RuntimeException("Customer not found"));
        existingCustomer.setName(customer.getName());
        existingCustomer.setGender(customer.getGender());
        existingCustomer.setDateofbirth(customer.getDateofbirth());
        existingCustomer.setLocation(customer.getLocation());
        existingCustomer.setContact(customer.getContact());
        existingCustomer.setEmail(customer.getEmail());
        
        customerRepository.save(existingCustomer);
        return "Customer updated successfully!";
    }
    
    @Override
    public String uploadCustomerImage(int id, byte[] image) {
        Customer customer = customerRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Customer not found"));
        customer.setImage(image);
        customerRepository.save(customer);
        return "Profile image uploaded successfully!";
    }

    @Override
    public byte[] getCustomerImage(int id) {
        Customer customer = customerRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Customer not found"));
        return customer.getImage();
    }
    
    @Override
    public Customer getCustomerById(int id) {
        return customerRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Customer not found"));
    }

}
