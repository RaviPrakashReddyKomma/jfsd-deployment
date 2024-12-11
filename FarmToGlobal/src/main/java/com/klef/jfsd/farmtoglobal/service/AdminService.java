package com.klef.jfsd.farmtoglobal.service;

import java.util.List;
import com.klef.jfsd.farmtoglobal.model.Admin;
import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Farmer;

public interface AdminService {
    public List<Customer> viewAllCustomers();
    public List<Farmer> viewAllFarmers();
    public Admin checkAdminLogin(String uname, String pwd);
    public long customercount();
    public long farmercount();
    public long productcount();
    public String deleteCustomer(int id);
    public String deleteProduct(int id);
    public String deleteFarmer(int id);
    public String updateAdmin(Admin admin);
}
