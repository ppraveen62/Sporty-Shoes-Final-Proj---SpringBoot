package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface usersrepositry extends JpaRepository<users,Integer> {
	
	@Query("select users from  users users where role='USER'")
	public List<users> findusers();

}
