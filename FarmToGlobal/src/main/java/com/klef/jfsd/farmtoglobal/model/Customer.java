package com.klef.jfsd.farmtoglobal.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
@Entity
@Table(name="customer_table")
public class Customer 
{
	@Id //unique+not null
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment
	@Column(name="customer_id",updatable = false,nullable=false)
	private int id;
	@Column(name="customer_name",nullable=false,length=100)
	private String name;
	@Column(name="customer_gender",nullable=false,length=10)
	private String gender;
	@Column(name="customer_dateofbirth",nullable=false,length=20)
	private String dateofbirth;
	@Column(name="customer_email",nullable=false,unique=true,length=100)
	private String email;
	@Column(name="customer_password",nullable=false,length=100)
	private String password;
	@Column(name="customer_location",nullable=false,length=100)
	private String location;
	@Column(name="customer_contact",nullable=false,unique=true,length=20)
	private String contact;
	@Column(name = "image", columnDefinition = "VARBINARY(255)")
	private byte[] image;
  // Assuming this is where the image data is stored

	    // New field for Base64 image string
	    private String imageBase64;

	    // Getters and Setters for all other fields...

	    // Getter and Setter for imageBase64
	    public String getImageBase64() {
	        return imageBase64;
	    }

	    public void setImageBase64(String imageBase64) {
	        this.imageBase64 = imageBase64;
	    }

	    // Getter and Setter for image (byte array)
	    public byte[] getImage() {
	        return image;
	    }

	    public void setImage(byte[] image) {
	        this.image = image;
	    }
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
}
