<%@page import="java.util.Random"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking confirm</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">

<%
   Random rand=new Random(); 
	int tid=rand.nextInt(580009999,990009999);


%>
	<div align="center">
		<i><h1>   &#9989; Payment Successful !</h1><br></i>
		<h3>Thank you! Your order has been placed.</h3><br><br>
		Booking ID :&nbsp;<%=request.getParameter("order") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Transaction ID :&nbsp;<%=tid %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Total Amount Paid :&nbsp;<%=request.getParameter("amt")%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br>
		<br>
		<i><h4>Your Order details have been sent to your mail.</h3><i></i><br><br>
		<form action="userHome.jsp"><input type="submit" value="Done"></form><br>
	</div>
</body>
</html>