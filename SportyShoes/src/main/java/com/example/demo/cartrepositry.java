package com.example.demo;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface cartrepositry extends JpaRepository<cart,Long> {
	
	@Query("select cart from cart cart where username=?1 and payment='notpaid'")
	public List<cart> findcartbyusername(String name);

	@Transactional
	@Modifying
	@Query("update cart set dateofpurchase=?1,orderno=?2,payment=?3 where username=?4 and payment='notpaid'")
	public  void updatebyuser(Date date,String orderno,String payment ,String username);
	
	@Query("select cart from cart cart where payment='paid'")
	public List<cart> findcartbypayment();
	
	
}
