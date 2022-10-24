package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class productDao {
	
	@Autowired
	productrepositry repo;

	public product insert(product p) {
		return repo.save(p);
		
	}
	
	//retrieve
	public List<product> getproduct() {
		return repo.findAll(); 
	}
	
	public product delete(long id) {
		repo.deleteById(id);
		return null;
	}
	
	public List<product> getproductbycategory(String name) {
		return repo.findproductbycategory(name);
	}


	
}
