<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update product</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">
	<div align="center">
		
			<i><h1>SportyShoes</h1></i>
		<h4 align="right"> - devloped by P Praveen kumar</h4><br>
		<h3 align="right"><a href='adminHome.jsp' style="text-decoration: none">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout' style="text-decoration: none">Logout</a></h3>
		<br><br>
		<h3>Enter Details</h3>
		<form action="updateproduct"><br>
				
			<table>
			
			<tr>
			<td><b>Product Category</b></td>
				<td><select  name="productcategory">
                        <option value="Running shoes">Running shoes</option>
                        <option value="Minimalist shoes">Minimalist shoes</option>
                        <option value="Walking shoes">Walking shoes</option>
                        <option value="Tennis shoes">Tennis shoes</option>
                        <option value="Versatile training shoes">Versatile training shoes</option>
                        <option value="Trail running shoes">Trail running shoes</option>
                        <option value="Basketball shoes">Basketball shoes</option>
                        <option value="Football boots">Football boots</option>
                       
                    </select></td>
			
			</tr>
			<tr>
			<td><b>Product Name</b></td>
			<td><input type ="text" name="productname"  ></td>
			</tr>
			<tr>
			<td><b>Product Price Rs</b></td>
			<td><input type ="number" name="productprice"  >/-</td>
			</tr>
			<tr>
			<td><b>Product Description</b></td>
			<td><input type ="text" name="productdescription"  ></td>
			</tr>
			
			</table>
			<input type ="hidden" name="productid" value=<%=request.getParameter("productid")  %> >
			
			<br><input type ="submit"  value="Update Product">
		</form>
		
		
	</div>
		
		

</body>
</html>