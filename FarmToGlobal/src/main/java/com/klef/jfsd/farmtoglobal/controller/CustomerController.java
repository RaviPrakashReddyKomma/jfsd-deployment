package com.klef.jfsd.farmtoglobal.controller;

import java.io.IOException;

import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Product;
import com.klef.jfsd.farmtoglobal.service.CustomerService;
import com.klef.jfsd.farmtoglobal.service.FarmerService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerService customerService;
	
	@Autowired
    private FarmerService farmerService;

	
	@GetMapping("/")
	public ModelAndView  home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("/aboutus")
	public ModelAndView  aboutus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("aboutus");
		return mv;
	}
	
	@GetMapping("/products")
	public ModelAndView products()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("products");
		return mv;
	}
	
	@GetMapping("/customerviewproducts")
    public ModelAndView customerviewproducts() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("customerviewproducts");
    	
    	 List<Product> products = farmerService.viewAllProducts();
         mv.addObject("products", products);
         return mv;
    	
    }
	
	@GetMapping("/customerhome")
	public ModelAndView  customerhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerhome");
		return mv;
	}
	
	@GetMapping("/customerprofile")
	public ModelAndView  customerprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerprofile");
		return mv;
	}
	
	@GetMapping("/customerreg")
	public ModelAndView  customerreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerreg");
		return mv;
	}
	@GetMapping("/customerlogin")
	public ModelAndView  customerlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}
	
	@PostMapping("insertcustomer")
	public ModelAndView insertcustomer(HttpServletRequest request)
	{
		String name = request.getParameter("cname");
		String gender = request.getParameter("cgender");
		String dob = request.getParameter("cdob");
		String email = request.getParameter("cemail");
		String location = request.getParameter("clocation");
		String contact = request.getParameter("ccontact");
		String password = request.getParameter("cpwd");
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setDateofbirth(dob);
		customer.setEmail(email);
		customer.setLocation(location);
		customer.setContact(contact);
		customer.setPassword(password);
		
		String message = customerService.customerRegistration(customer);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message",message);
		return mv;
		
	}
	@RequestMapping("/regsuccess")
    public String regSuccess() {
        return "regsuccess";  
    }
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();

	    String cemail = request.getParameter("cemail"); 
	    String cpwd = request.getParameter("cpwd"); 
	    Customer customer = customerService.checkCustomerLogin(cemail, cpwd);

	    if (customer != null) 
	    {
	    	HttpSession session = request.getSession();
    		session.setAttribute("customer", customer); //customer is session object
    		mv.setViewName("customerhome");
	        mv.addObject("message", "Login Successful"); 
	    } else {
	        mv.setViewName("customerloginfail");
	        mv.addObject("message", "Login Failed");
	    }
	    return mv;
	}
	
	@GetMapping("/customerlogout")
	public ModelAndView  customerlogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}
	
	@PostMapping("/updateCustomer")
	public ModelAndView updateCustomer(HttpServletRequest request, @RequestParam("cimage") MultipartFile cimage) throws IOException {
	    int id = Integer.parseInt(request.getParameter("cid"));
	    String name = request.getParameter("cname");
	    String gender = request.getParameter("cgender");
	    String dob = request.getParameter("cdob");
	    String location = request.getParameter("clocation");
	    String contact = request.getParameter("ccontact");
	    String email = request.getParameter("cemail");

	    Customer customer = customerService.getCustomerById(id); // Assuming this method exists in the service
	    customer.setName(name);
	    customer.setGender(gender);
	    customer.setDateofbirth(dob);
	    customer.setLocation(location);
	    customer.setContact(contact);
	    customer.setEmail(email);

	    if (!cimage.isEmpty()) {
	        customer.setImage(cimage.getBytes());
	    }

	    customerService.updateCustomer(customer);

	    HttpSession session = request.getSession();
	    session.setAttribute("customer", customer);

	    ModelAndView mv = new ModelAndView("customerprofile");
	    mv.addObject("message", "Profile updated successfully!");
	    return mv;
	}

	@GetMapping("/getCustomerImage")
    @ResponseBody
    public ResponseEntity<byte[]> getCustomerImage(@RequestParam("cid") int customerId) {
        Customer customer = customerService.getCustomerById(customerId);
        if (customer != null && customer.getImage() != null) {
            return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_JPEG)  // or IMAGE_PNG based on the format of the image
                    .body(customer.getImage());
        }
        return ResponseEntity.notFound().build();
    }
	
	@GetMapping("/customer/{id}")
	public ModelAndView getCustomerProfile(@PathVariable("id") int id) {
	    Customer customer = customerService.getCustomerById(id);
	    // Convert image to Base64
	    if (customer.getImage() != null) {
	        String imageBase64 = Base64.getEncoder().encodeToString(customer.getImage());
	        customer.setImageBase64(imageBase64);  // Assuming you added a setter for this
	    }
	    return new ModelAndView("customerprofile", "customer", customer);
	}
}