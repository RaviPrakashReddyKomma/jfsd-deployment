package com.klef.jfsd.farmtoglobal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.model.Product;
import com.klef.jfsd.farmtoglobal.repository.FarmerRepository;
import com.klef.jfsd.farmtoglobal.repository.ProductRepository;

@Service
public class FarmerServiceImpl implements FarmerService {

    @Autowired
    private FarmerRepository farmerRepository;
    
    @Autowired
    private ProductRepository productRepository;
    

    @Override
    public String farmerRegistration(Farmer farmer) {
        farmerRepository.save(farmer);
        return "Farmer registered successfully!";
    }

    @Override
    public Farmer checkFarmerLogin(String email, String password) {
        return farmerRepository.checkFarmerLogin(email, password);
    }

    @Override
    public String updateFarmer(Farmer farmer) {
        Farmer existingFarmer = farmerRepository.findById(farmer.getId())
                .orElseThrow(() -> new RuntimeException("Farmer not found"));
        existingFarmer.setName(farmer.getName());
        existingFarmer.setGender(farmer.getGender());
        existingFarmer.setDateofbirth(farmer.getDateofbirth());
        existingFarmer.setLocation(farmer.getLocation());
        existingFarmer.setContact(farmer.getContact());
        existingFarmer.setCompany(farmer.getCompany());
        existingFarmer.setEmail(farmer.getEmail());
        farmerRepository.save(existingFarmer);
        return "Farmer updated successfully!";
    }
    
    @Override
    public Farmer findFarmerById(int id) {
        return farmerRepository.findById(id).orElse(null);
    }
    
    @Override
	public String addProduct(Product product) {
		productRepository.save(product);
		return "Product Added Successfully";
		
	}

	@Override
	public List<Product> viewAllProducts() {
		return productRepository.findAll();
	}

	@Override
	public Product displayProductById(int pid) {
		return productRepository.findById(pid).get();
	}
	
	// In FarmerService class
			public Product getProductById(int id) {
			    // Assuming you're using a repository to fetch products by their id
			    return productRepository.findById(id)
			            .orElseThrow(() -> new RuntimeException("Product not found"));
			}
}
