<%@page import="com.example.demo.*"%>
<%@page import="java.util.*"%>
<%@ page import="com.example.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>purchase reports</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">
		<%
	List<cart> list=(List<cart>)request.getAttribute("list");
	%>
	
	<div align="center">
		
			<i><h1>SportyShoes</h1></i>
		<h4 align="right"> - devloped by P Praveen kumar</h4><br>

		<h3 align="right"><a href='adminHome.jsp' style="text-decoration: none">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout' style="text-decoration: none">Logout</a></h3>
	
		<br><br>
		
		
	<table border="1" cellpadding ="5" cellspacing ="5"> 
	<tr><th>Purchased Date</th><th>Order Id</th><th>product Id</th><th>Product Category</th><th>Product price</th><th>Customer Username</th></tr>
	<%for(cart c:list){ %>
	<tr><td><%=c.getDateofpurchase()%></td><td><%=c.getOrderno() %></td><td><%=c.getProductid() %></td><td><%=c.getProductcategory()%></td><td><%=c.getProductprice()%></td>
	<td><%=c.getProductprice() %></td>
	</tr>
	<%}%>
	</table>
		
		
	</div>
	
	
	

</body>
</html>