package com.klef.jfsd.farmtoglobal.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.farmtoglobal.model.Admin;
import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.repository.AdminRepository;
import com.klef.jfsd.farmtoglobal.repository.CustomerRepository;
import com.klef.jfsd.farmtoglobal.repository.FarmerRepository;
import com.klef.jfsd.farmtoglobal.repository.ProductRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired  
    private AdminRepository adminRepository;

    @Autowired  
    private FarmerRepository farmerRepository;  // Make sure to include this
    
    @Autowired  
    private ProductRepository productRepository;

    @Override
    public List<Customer> viewAllCustomers() {
        return customerRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        return adminRepository.checkAdminLogin(uname, pwd);
    }

    @Override
    public List<Farmer> viewAllFarmers() {
        return farmerRepository.findAll(); 
    }

	@Override
	public long customercount() {
		return customerRepository.count();
	}

	@Override
	public long farmercount() {
		return farmerRepository.count();
	}

	@Override
	public String deleteCustomer(int id) {
		 customerRepository.deleteById(id);
		 return "Customer Deleted Successfully";
	}

	@Override
	@Transactional // Ensures the delete operation is properly handled
	public String deleteFarmer(int id) {
	    try {
	        farmerRepository.deleteById(id);
	        return "Farmer Deleted Successfully";
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "Error Deleting Farmer";
	    }
	}

	@Override
	public String updateAdmin(Admin admin) {
		Admin c = adminRepository.findById(admin.getUsername()).get();
		c.setPassword(admin.getPassword());
		adminRepository.save(c);
		return "Admin Updated Successfully";
	}

	@Override
	public long productcount() {
		return productRepository.count();
	}

	@Override
	public String deleteProduct(int id) {
		productRepository.deleteById(id);
		 return "Product Deleted Successfully";
	}



}
