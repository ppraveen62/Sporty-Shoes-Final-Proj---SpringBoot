package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class usersDao {
	
	@Autowired
	usersrepositry repo;

	public users insert(users u) {
		return repo.save(u);
		
	}
	
	//retrieve
	public List<users> getusers() {
		return repo.findusers();
	}
	
}
