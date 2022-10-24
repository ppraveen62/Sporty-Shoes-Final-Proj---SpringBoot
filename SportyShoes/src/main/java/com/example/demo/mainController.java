package com.example.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class mainController {

	
	@Autowired
	usersDao udao;
	
	@Autowired
	productDao pdao;
	
	@Autowired
	cartDao cdao;
	
	
	public String amount;
	public String id;
	
	@RequestMapping("/")
	public ModelAndView displaydefaultpage(HttpServletRequest request,HttpServletResponse response)
	{
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home.jsp");
		return mv;
	}
	
	@RequestMapping("/loginhome")
	public ModelAndView adminhome(HttpServletRequest request,HttpServletResponse response)
	{	
		ModelAndView mv=new ModelAndView();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String role=authentication.getAuthorities().stream().findAny().get().getAuthority();
		System.out.println(role);
		if (role.equals("ADMIN")) {
			
			mv.setViewName("adminHome.jsp");
		}
		if (role.equals("USER")) {
							
			mv.setViewName("userHome.jsp");
		}
		return mv;
	}
	
	
	@RequestMapping("/updatepassword")
	public ModelAndView updatepassword(users u ,HttpServletRequest request,HttpServletResponse response) throws IOException {
		ModelAndView mv=new ModelAndView();
		u.setUserid(1);
		u.setUsername("admin");
		u.setEnabled(true);
		u.setRole("ADMIN");
		u.setPassword(request.getParameter("password"));
		udao.insert(u);
		mv.setViewName("updatesucesshome.jsp");
		return mv;
	}
	
	@RequestMapping("/userRegistration")
	public ModelAndView registeruserdetails(users u ,HttpServletRequest request,HttpServletResponse response) throws IOException {
		ModelAndView mv=new ModelAndView();
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setName(request.getParameter("name"));
		u.setContactno(request.getParameter("contactno"));
		u.setPincode(request.getParameter("pincode"));
		u.setName(request.getParameter("useremail"));
		u.setName(request.getParameter("adress"));
		u.setEnabled(true);
		u.setRole("USER");
		
		udao.insert(u);
		mv.setViewName("updatesucesshome.jsp");
		return mv;
	}
	
	
	@RequestMapping("/listusers")
	public ModelAndView getalluser(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		List<users> list=udao.getusers();
		mv.setViewName("userlist.jsp");
		mv.addObject("list", list);
		return mv;
	}

	
	
	@RequestMapping("/searchuser")
	public ModelAndView getuser(users u,HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		List<users> list=udao.getusers();
		mv.setViewName("userlistsearch.jsp");
		mv.addObject("list", list);
		u.setUsername(request.getParameter("username"));
		return mv;
	}
	
	
	@RequestMapping("/addproduct")
	public ModelAndView addproductdetails(product p ,HttpServletRequest request,HttpServletResponse response) throws IOException {
		ModelAndView mv=new ModelAndView();
		
		String pid=request.getParameter("productid");
		if (pid=="") {
			pid = "0";
		}
		Long id=Long.parseLong(pid);
		String pcategory=request.getParameter("productcategory");
		String pname=request.getParameter("productname");
		String pprice=request.getParameter("productprice");
		if (pprice=="") {
			pprice= "0";
		}
		Double price=Double.parseDouble(pprice);
		String pdesc=request.getParameter("productdescription");
		
		if(id!=0 && pcategory!="" && pname!="" && price!=0 &&pdesc!="") {

			p.setProductid(Long.parseLong(request.getParameter("productid")));
			p.setProductcategory(request.getParameter("productcategory"));
			p.setProductname(request.getParameter("productname"));
			p.setProductprice(request.getParameter("productprice"));
			p.setProductdescription(request.getParameter("productdescription"));
			pdao.insert(p);
			mv.setViewName("listproduct");
		}
		
		if(id==0 || pcategory=="" || pname=="" || price==0 || pdesc=="") {
			
			mv.setViewName("addProduct.jsp");
	
		}
		
		return mv;
	}
	
	
	@RequestMapping("/updateproduct")
	public ModelAndView updateproductdetails(product p ,HttpServletRequest request,HttpServletResponse response) throws IOException {
		ModelAndView mv=new ModelAndView();
		
		String pcategory=request.getParameter("productcategory");
		String pname=request.getParameter("productname");
		String pprice=request.getParameter("productprice");
		if (pprice=="") {
			pprice= "0";
		}
		Double price=Double.parseDouble(pprice);
		String pdesc=request.getParameter("productdescription");
		
		if( pcategory!="" && pname!="" && price!=0 &&pdesc!="") {
		
		
			p.setProductid(Long.parseLong(request.getParameter("productid")));
			p.setProductcategory(request.getParameter("productcategory"));
			p.setProductname(request.getParameter("productname"));
			p.setProductprice(request.getParameter("productprice"));
			p.setProductdescription(request.getParameter("productdescription"));
			pdao.insert(p);
			mv.setViewName("listproduct");
		}
		
		if(pcategory=="" || pname=="" || price==0 || pdesc=="") {
			
			mv.setViewName("updateProduct.jsp");
	
		}
		return mv;
	}
	
	@RequestMapping("/deleteproduct")
	public ModelAndView deleteproductdetails(HttpServletRequest request,HttpServletResponse response) throws IOException {
		ModelAndView mv=new ModelAndView();
		long id =Long.parseLong(request.getParameter("productid"));
		pdao.delete(id);
		mv.setViewName("listproduct");
		return mv;
	}
	
	

	@RequestMapping("/listproduct")
	public ModelAndView getallproduct(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		List<product> list=pdao.getproduct();
		mv.setViewName("productmodify.jsp");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/purchasereport")
	public ModelAndView showcartbypatment(cart c, HttpServletRequest request,HttpServletResponse response)  {
		ModelAndView mv=new ModelAndView();
	    List<cart> list=cdao.getcartbypayment();
	    mv.addObject("list", list);
		mv.setViewName("purchaseReports.jsp");
		return mv;
	}
	
	/////////////////////////
	
	@RequestMapping("/productbycategory")
	public ModelAndView getproductbycategory(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		List<product> list=pdao.getproductbycategory(request.getParameter("productcategory"));
		mv.setViewName("productbyCategory.jsp");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/addtocart")
	public ModelAndView addcart(cart c, HttpServletRequest request,HttpServletResponse response)  {
		ModelAndView mv=new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
	    String username = auth.getName();
		Long productid=Long.parseLong(request.getParameter("productid"));
		String productname=request.getParameter("productname");
		String productPrice=request.getParameter("productprice");
		String productcategory=request.getParameter("productcategory");
		
		c.setUsername(username);
		c.setProductid(productid);
		c.setProductname(productname);
		c.setProductcategory(productcategory);
		c.setProductprice(productPrice);
		c.setPayment("notpaid");
		cdao.insert(c);
		mv.setViewName("addcartsucess.jsp");
		return mv;
	}
	
	@RequestMapping("/showCart")
	public ModelAndView showcart(cart c, HttpServletRequest request,HttpServletResponse response)  {
		ModelAndView mv=new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName();
	    List<cart> list=cdao.getcartbyusername( username);
	    mv.addObject("list", list);
		mv.setViewName("showcart.jsp");
		return mv;
	}
	
	@RequestMapping("/failpayment")
	public ModelAndView showcart2(cart c, HttpServletRequest request,HttpServletResponse response)  {
		ModelAndView mv=new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName();
	    List<cart> list=cdao.getcartbyusername( username);
	    mv.addObject("list", list);
		mv.setViewName("failpayshowcart.jsp");
		return mv;
	}
	
	@RequestMapping("/removefromcart")
	public ModelAndView removefromcart(cart c, HttpServletRequest request,HttpServletResponse response)  {
		ModelAndView mv=new ModelAndView();
		long id=Long.parseLong(request.getParameter("cartid"));
		cdao.deletebyid(id);
		mv.setViewName("showCart");
		return mv;
	}
	
	@RequestMapping("/paymentcheck")
	public ModelAndView paymentcheck( HttpServletRequest request,HttpServletResponse response) throws ParseException  {
		ModelAndView mv=new ModelAndView();
		 String cardnum=request.getParameter("cardno");
		 String month=request.getParameter("month");
		 String pswrd=request.getParameter("psd");
		 System.out.println("check");
		 
		 if (cardnum=="") {
				cardnum = "0";
			}
		 Long cardno=Long.parseLong(cardnum);
		 
		if(cardno!=0 && month!="" && pswrd!="") {
			amount=request.getParameter("amt");
			id=request.getParameter("order");
			 mv.setViewName("paid.jsp");
			 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			 String username = auth.getName();
	         Date dNow = new Date( );
	         SimpleDateFormat ft =new SimpleDateFormat ("dd-MM-yyyy");
	         String dt1=ft.format(dNow);
	         Date date=new SimpleDateFormat("dd-MM-yyyy").parse(dt1);  
			 String orderno=request.getParameter("order");
			 String payment="paid";
			 
			 cdao.updatebyuser(date, orderno, payment,username);
			 
		}
		else {
			mv.setViewName("failpayment");
		}
		return mv;
	}
	
	
	
	
}
	
