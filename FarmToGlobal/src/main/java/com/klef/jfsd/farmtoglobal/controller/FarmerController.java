package com.klef.jfsd.farmtoglobal.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.model.Product;
import com.klef.jfsd.farmtoglobal.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FarmerController 
{
    @Autowired
    private FarmerService farmerService;

    @GetMapping("/farmerreg")
    public ModelAndView farmerreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerreg");
        return mv;
    }

    @GetMapping("/farmerhome")
    public ModelAndView farmerhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerhome");
        return mv;
    }

    @GetMapping("/farmerlogin")
    public ModelAndView farmerlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerlogin");
        return mv;
    }

    @GetMapping("/farmerprofile")
    public ModelAndView farmerprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerprofile");
        return mv;
    }

    @PostMapping("insertfarmer")
    public ModelAndView insertfarmer(HttpServletRequest request) {
        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String dob = request.getParameter("fdob");
        String email = request.getParameter("femail");
        String location = request.getParameter("flocation");
        String contact = request.getParameter("fcontact");
        String password = request.getParameter("fpwd");
        String company = request.getParameter("fcname");

        Farmer farmer = new Farmer();
        farmer.setName(name);
        farmer.setGender(gender);
        farmer.setDateofbirth(dob);
        farmer.setEmail(email);
        farmer.setLocation(location);
        farmer.setContact(contact);
        farmer.setPassword(password);
        farmer.setCompany(company);

        String message = farmerService.farmerRegistration(farmer);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerregsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @PostMapping("checkfarmerlogin")
    public ModelAndView checkfarmerlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String femail = request.getParameter("femail");
        String fpwd = request.getParameter("fpwd");
        Farmer farmer = farmerService.checkFarmerLogin(femail, fpwd);
        request.getSession().setAttribute("Farmer", farmer);
        if (farmer != null) {
            HttpSession session = request.getSession();
            session.setAttribute("farmer", farmer);
            mv.setViewName("farmerhome");
        } else {
            mv.setViewName("farmerloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("/farmerlogout")
    public ModelAndView farmerlogout() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerlogin");
        return mv;
    }

    @PostMapping("/updateFarmer")
    public ModelAndView updateFarmer(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("fid"));
        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String dob = request.getParameter("fdob");
        String email = request.getParameter("femail");
        String location = request.getParameter("flocation");
        String contact = request.getParameter("fcontact");
        String company = request.getParameter("fcname");
        String password = request.getParameter("fpwd");

        // Retrieve existing farmer and update only necessary fields
        Farmer farmer = farmerService.findFarmerById(id);
        if (farmer == null) {
            throw new RuntimeException("Farmer not found");
        }

        farmer.setName(name);
        farmer.setGender(gender);
        farmer.setDateofbirth(dob);
        farmer.setEmail(email);
        farmer.setLocation(location);
        farmer.setContact(contact);
        farmer.setCompany(company);
        farmer.setPassword(password);

        farmerService.updateFarmer(farmer);

        // Refresh session data
        HttpSession session = request.getSession();
        session.setAttribute("farmer", farmer);

        ModelAndView mv = new ModelAndView("farmerprofile");
        mv.addObject("message", "Profile updated successfully!");
        return mv;
    }
    
    
    
    
    
    
    
    @GetMapping("addproduct")
    public String addproduct()
    {
    	return "addproduct";
    }
    
    @PostMapping("insertproduct")
    public ModelAndView insertproduct(HttpServletRequest request,@RequestParam("pimage") MultipartFile file) throws IOException, SerialException, SQLException
    {
    	String name = request.getParameter("pname");
    	double cost = Double.parseDouble(request.getParameter("pcost"));
    	String description = request.getParameter("pdescription");
    	
    	byte[] bytes = file.getBytes();
    	Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
    	
    	Product p = new Product();
    	p.setCost(cost);
    	p.setDescription(description);
    	p.setName(name);
    	p.setImage(blob);
    	
    	String message = farmerService.addProduct(p);
    	
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("productsuccess");
    	mv.addObject("message", message);
    	
    	return mv;
    }
    
    @GetMapping("/viewallproducts")
    public ModelAndView viewallproducts() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("viewallproducts");
    	
    	 List<Product> products = farmerService.viewAllProducts();
         mv.addObject("products", products);
         return mv;
    	
    }
    
    @GetMapping("displayproductimage")
    public ResponseEntity<byte[]> displayproductimage(@RequestParam int id) throws SQLException
    {
    	Product product = farmerService.displayProductById(id);
    	byte[] imagesbytes = null;
    	imagesbytes = product.getImage().getBytes(1,(int) product.getImage().length());
    	return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagesbytes);
    	
    }
}
