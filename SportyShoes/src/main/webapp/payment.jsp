<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment GateWay</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">
	<%
		
			Random rand=new Random(); 
			long ran=rand.nextInt(120001 ,122000);
	  		String amount=request.getParameter("totalprice");
	  		
	%>

	<div align="center">
		<i><h1>SportyShoes</h1></i><br>
		<h3 align="right"><a href='userHome.jsp' style="text-decoration: none">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='showCart' style="text-decoration: none">Cart</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href='logout' style="text-decoration: none">Logout</a></h3>
		
		<h2>SportyShoes.Pay</h2>
		<i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		( A Secure Payment Gateway.)</i>
		<form action="paymentcheck" ><br> 
			<table>
				<tr>
					<td><b>Company</b></td><td>&nbsp;&nbsp;&nbsp;SportyShoes</td>
				</tr>
				<tr>
					<td><b>Order Number</b></td><td>&nbsp;&nbsp;&nbsp;<%=ran %></td>
				</tr>
				<tr>
					<td><b>Total Amount </b>Rs</td><td>&nbsp;&nbsp;&nbsp;<%=amount %> /-</td>
				</tr>
			</table><br>
			<h3>Card Payment</h3>
			<table>
				
				<tr>
					<td><b>Card Number</b></td><td><input type ="number" name="cardno"></td>
				</tr>
				<tr>
					<td><b>Expiry Date</b></td><td><input type="month" name="month"  min="2022" max="2100"></td>
				</tr>
				<tr>
					<td><b>Password </b></td><td><input type ="password" name="psd"></td>
				</tr>
			</table><br>
			<input type="submit" value="Pay"><br><br>
			
			
			<input type="hidden" id ="order" name="order" value=<%=ran %>>
			<input type="hidden" id ="amt" name="amt" value=<%=amount %>>
			
		
		</form>
	</div>
</body>
</html>