<%@page import="com.example.demo.*"%>
<%@page import="java.util.*"%>
<%@ page import="com.example.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product category</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">
		<%
			List<product> list=(List<product>)request.getAttribute("list");
	%>
	
	<div align="center">
		
			<i><h1>SportyShoes</h1></i>
		<h4 align="right"> - devloped by P Praveen kumar</h4><br>
		
		<h3 align="right"><a href='userHome.jsp' style="text-decoration: none">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='showCart' style="text-decoration: none">Cart</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href='logout' style="text-decoration: none">Logout</a></h3>
	
		<br><br>
		
		
	<table cellpadding ="5" cellspacing ="5"   style=font-size:25px >
	<tr><th>Product Id</th><th>Product Name</th><th>Product Description</th><th>Product price</th><th>Select Size</th></tr>
	<%for(product p:list){ %>
	<tr style="text-align: center"><td><%=p.getProductid()%></td><td><%=p.getProductname() %></td><td><%=p.getProductdescription()%></td><td><%=p.getProductprice()%></td>
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
	<td><form action ="addtocart">
	<input type="hidden" id="productid" name="productid" value=<%=p.getProductid() %>><input type="hidden" id="productcategory" name="productcategory" value=<%=p.getProductcategory()%>>
	<input type="hidden" id="productname" name="productname" value=<%=p.getProductname() %>><input type="hidden" id="productprice" name="productprice" value=<%=p.getProductprice()%>>
	<input type="hidden" id="productsize" name="productsize" value=<%=request.getParameter("size")  %>>
	<input type="submit" name="add" value="Add to Cart" ></form></td>
	</tr>
	<%}%>
	 </table>
		
		
	</div>

</body>
</html>