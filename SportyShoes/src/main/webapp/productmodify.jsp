<%@page import="com.example.demo.*"%>
<%@page import="java.util.*"%>
<%@ page import="com.example.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product modify</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">
		<%
	List<product> list=(List<product>)request.getAttribute("list");
	%>
	
	<div align="center">
		
			<i><h1>SportyShoes</h1></i>
		<h4 align="right"> - devloped by P Praveen kumar</h4><br>

		<h3 align="right"><a href='adminHome.jsp' style="text-decoration: none">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout' style="text-decoration: none">Logout</a></h3>
	
		<br><br>
		<form action="addProduct.jsp">
			<input type ="submit" name="ok" value="Add Product">
		</form>
		<br><br>
		
	<table border="1" cellpadding ="5" cellspacing ="5"> 
	<tr><th>Product Id</th><th>Product Category</th><th>Product Name</th><th>Product price</th><th>Product Description</th></tr>
	<%for(product p:list){ %>
	<tr><td><%=p.getProductid()%></td><td><%=p.getProductcategory() %></td><td><%=p.getProductname() %></td><td><%=p.getProductprice()%></td><td><%=p.getProductdescription()%></td>
	<td><form action="updateProduct.jsp"><input type="hidden" id="productid" name="productid" value=<%=p.getProductid() %>><input type="submit" value="Edit" ></form></td>
	<td><form action="deleteproduct"><input type="hidden" id="productid" name="productid" value=<%=p.getProductid() %>><input type="submit" value="Delete" ></form></td>
	</tr>
	<%}%>
	</table>
		
		
	</div>
	
	
	

</body>
</html>