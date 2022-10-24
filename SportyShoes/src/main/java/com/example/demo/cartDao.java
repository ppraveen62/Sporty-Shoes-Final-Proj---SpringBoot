package com.example.demo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class cartDao {
	
	@Autowired
	cartrepositry repo;
	
	public cart insert(cart c) {
		return repo.save(c);
		
	}
	
	
	public cart deletebyid(long id) {
		repo.deleteById(id);
		return null;
	}
	
	public List<cart> getcartbyusername(String name) {
		return repo.findcartbyusername(name);
	}
	
	
	public List<cart> getcartbypayment() {
		return repo.findcartbypayment();
	}
	
	public  void updatebyuser(Date Date,String orderno,String payment ,String username) {
		 repo.updatebyuser(Date, orderno, payment, username);
		 
		
		
	}
	
	
	
}
