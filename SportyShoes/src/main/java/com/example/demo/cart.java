package com.example.demo;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.UniqueConstraint;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class cart {
	@Id
	@GeneratedValue
	
	private long cartid;
	private String username;
	private Long productid;
	private String productcategory;
	private String productname;
	private String productprice;
	
	private String orderno;
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date dateofpurchase;
	private String payment;
}
