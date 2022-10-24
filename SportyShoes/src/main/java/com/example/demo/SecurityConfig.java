package com.example.demo;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	 @Autowired
	    DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication()
        .dataSource(dataSource)
        .usersByUsernameQuery("select username, password, enabled from users where username=?")
        .authoritiesByUsernameQuery("select username, role from users where username=?");

		}
		
	@Bean
	public PasswordEncoder getpassword() {
		return NoOpPasswordEncoder.getInstance();
	}
	
	//authorize
		@Override
		protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
	
		.antMatchers("/updatepassword").hasAuthority("ADMIN")
		.antMatchers("/listusers").hasAuthority("ADMIN")
		.antMatchers("/searchuser").hasAuthority("ADMIN")
		.antMatchers("/addproduct").hasAuthority("ADMIN")
		.antMatchers("/updateproduct").hasAuthority("ADMIN")
		.antMatchers("/deleteproduct").hasAuthority("ADMIN")
		.antMatchers("/listproduct").hasAuthority("ADMIN")
		.antMatchers("/purchasereport").hasAuthority("ADMIN")
		
	
		.antMatchers("/productbycategory").hasAuthority("USER")
		.antMatchers("/addtocart").hasAuthority("USER")
		.antMatchers("/showCart").hasAuthority("USER")
		.antMatchers("/failpayment").hasAuthority("USER")
		.antMatchers("/removefromcart").hasAuthority("USER")
		.antMatchers("/paymentcheck").hasAuthority("USER")
		
		
		.antMatchers("/loginhome").hasAnyAuthority("ADMIN","USER")
		
		.antMatchers("/").permitAll()
		.antMatchers("/userRegistration").permitAll()
		
		.and().formLogin().defaultSuccessUrl("/loginhome")
		.and().logout().logoutSuccessUrl("/");
		
		
		}

	

	}
