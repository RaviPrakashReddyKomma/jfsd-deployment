package com.klef.jfsd.farmtoglobal.service;
import java.util.List;

import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.model.Product;


public interface FarmerService 
{
	public  String farmerRegistration(Farmer farmer );
	public Farmer checkFarmerLogin(String email,String password);
	public String updateFarmer(Farmer farmer);
	Farmer findFarmerById(int id); // New method
	
	    //image upload and display operations
	
		public String addProduct(Product product);
		public List<Product> viewAllProducts();
		public Product displayProductById(int pid);
		public Product getProductById(int id);
		

}    

