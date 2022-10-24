package com.example.demo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class users {
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
		private int userid;
		private String username;
		private String password;
		private String role;
		private Boolean enabled;
		private String name;
		private String useremail;
		private String contactno; 
		private String adress;
		private String pincode;
}
