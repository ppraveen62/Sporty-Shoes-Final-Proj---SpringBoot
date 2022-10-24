<%@page import="com.example.demo.*"%>
<%@page import="com.example.demo.cartrepositry"%>
<%@page import="com.example.demo.product"%>
<%@page import="com.example.demo.mainController"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ page import="com.example.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">
		<%
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    	String username = auth.getName();
	    	
	    	List<cart> list=(List<cart>)request.getAttribute("list");
	    	
	    	double totalprice =0;
	    	
		%>
		
		<div align="center">
		
			<i><h1>SportyShoes</h1></i>
		<h4 align="right"> - devloped by P Praveen kumar</h4><br>

		<h3 align="right"><a href='userHome.jsp' style="text-decoration: none">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout' style="text-decoration: none">Logout</a></h3>
		<h3 align="left">Hai <%=username %></h3>
		<h2 align="center">Your Cart</h2>
		  
	<table cellpadding ="5" cellspacing ="5"   style=font-size:20px >
	<tr><th>Product Id</th><th>Product Name</th><th>Select Size</th><th>Product price</th></tr>
	<%for(cart c:list){ %>
	<tr style="text-align: center"><td><%=c.getProductid() %></td><td><%=c.getProductname() %></td>
	<td><select  name="size">
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                       
                    </select></td>
    <td><%=c.getProductprice()%></td>
    <td><form action = "removefromcart"><input type="hidden" id="cartid" name="cartid" value=<%=c.getCartid() %>><input type="submit" value="Remove from Cart" ></form></td></tr>
    <%totalprice+=Double.parseDouble(c.getProductprice()); %>
    
    <%}%>

    
	 </table><br>
	<h3>Total Price = <%=totalprice %></h3>
    <form action="payment.jsp"><input type="hidden" id="totalprice" name="totalprice" value=<%=totalprice %>><input style=font-size:20px type="submit" value="    Buy    " ></form><br><br><br>        
	<br><b><center> <span style = 'color:red'>Hello user! Card details entered is wrong </span> </center></b>
	
</body>
</html>