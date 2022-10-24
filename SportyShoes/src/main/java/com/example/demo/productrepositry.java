package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface productrepositry extends JpaRepository<product,Long> {
	
	@Query("select product from product product where productcategory=?1")
	public List<product> findproductbycategory(String name);
	
	
}
