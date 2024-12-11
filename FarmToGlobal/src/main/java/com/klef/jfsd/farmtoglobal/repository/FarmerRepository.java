package com.klef.jfsd.farmtoglobal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.farmtoglobal.model.Farmer;

@Repository
public interface FarmerRepository extends JpaRepository<Farmer, Integer>
{ 
	@Query("select c from Farmer c where c.email=?1 and c.password=?2")
	public Farmer checkFarmerLogin(String email,String password);
	
}
