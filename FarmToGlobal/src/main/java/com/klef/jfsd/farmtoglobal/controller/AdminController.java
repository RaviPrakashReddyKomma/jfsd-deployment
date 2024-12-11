package com.klef.jfsd.farmtoglobal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.farmtoglobal.model.Admin;
import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.model.Product;
import com.klef.jfsd.farmtoglobal.service.AdminService;
import com.klef.jfsd.farmtoglobal.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
    
    @Autowired
    private FarmerService farmerService;

    @GetMapping("/adminlogin")
    public ModelAndView adminLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }

    @GetMapping("/adminhome")
    public ModelAndView adminhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminhome");
        long count = adminService.customercount();
        mv.addObject("count", count);
        long counts = adminService.farmercount();
        mv.addObject("counts", counts);
        long countss = adminService.productcount();
        mv.addObject("countss", countss);
        return mv;
    }

    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");
        Admin admin = adminService.checkAdminLogin(auname, apwd);
        if (admin != null) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);
            mv.setViewName("/adminhome");
            long count = adminService.customercount();
            mv.addObject("count", count);
            long counts = adminService.farmercount();
            mv.addObject("counts", counts);
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    
    @GetMapping("/viewallcustomers")
    public ModelAndView viewallcustomers() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallcustomers");
        long count = adminService.customercount();
		 mv.addObject("count",count);
        List<Customer> customers = adminService.viewAllCustomers();
        mv.addObject("customerlist", customers);
        return mv;
    }
    
    @GetMapping("/viewallfarmers")
    public ModelAndView viewallfarmers() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallfarmers");
        long count = adminService.farmercount();
		 mv.addObject("count",count);
        List<Farmer> farmers = adminService.viewAllFarmers();
        mv.addObject("farmerlist", farmers);
        return mv;
    }
    

    

    @GetMapping("/updateadminprofile")
    public ModelAndView updateadminprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updateadminprofile");
        return mv;
    }

    @PostMapping("update")
    public ModelAndView update(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String username = (request.getParameter("auname"));
        String password = request.getParameter("apwd");
        Admin admin = new Admin();
        admin.setUsername(username);
        admin.setPassword(password);
        adminService.updateAdmin(admin);
        mv.setViewName("adminlogin");
        return mv;
    }
    
    @GetMapping("/adminviewproducts")
    public ModelAndView adminviewproducts() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("adminviewproducts");
    	long countss = adminService.productcount();
		 mv.addObject("countss",countss);
    	 List<Product> products = farmerService.viewAllProducts();
         mv.addObject("products", products);
         return mv;
    	
    }
    
    @GetMapping("/deletecustomer")
    public ModelAndView deletecustomer() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletecustomer");
        return mv;
    }
    
    @GetMapping("delete")
    public String delete(@RequestParam int id, RedirectAttributes redirectAttributes)
    {
    	adminService.deleteCustomer(id);
    	 redirectAttributes.addFlashAttribute("successMessage", "Customer deleted successfully!");
         return "redirect:/viewallcustomers";
    }
    
    @GetMapping("/deletefarmer")
    public ModelAndView deletefarmer() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletefarmer");
        return mv;
    }
    
    @GetMapping("deletes")
    public String deletes(@RequestParam int id, RedirectAttributes redirectAttributes) {
        adminService.deleteFarmer(id);
        redirectAttributes.addFlashAttribute("successMessage", "Farmer deleted successfully!");
        return "redirect:/viewallfarmers";
    }
    
    @GetMapping("/deleteproduct")
    public ModelAndView deleteproduct() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deleteproduct");
        return mv;
    }
    
    @GetMapping("deletess")
    public String deletess(@RequestParam int id, RedirectAttributes redirectAttributes) {
        adminService.deleteProduct(id); // Deleting the product by its ID
        redirectAttributes.addFlashAttribute("successMessage", "Product deleted successfully!"); // Updated message
        return "redirect:/adminviewproducts"; // Redirect to the view all products page
    }


    
}
