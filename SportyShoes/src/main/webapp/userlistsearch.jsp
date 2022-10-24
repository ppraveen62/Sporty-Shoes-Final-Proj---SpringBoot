<%@page import="com.example.demo.*"%>
<%@page import="java.util.*"%>
<%@ page import="com.example.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>userlistsearch</title>
</head>
<body style="background:url(picer.jpg)  no-repeat;background-size:90%  auto; ">
		<%
	List<users> list=(List<users>)request.getAttribute("list");
	%>
	
	<div align="center">
		
			<i><h1>SportyShoes</h1></i>
		<h4 align="right"> - devloped by P Praveen kumar</h4><br>

		<h3 align="right"><a href='adminHome.jsp' style="text-decoration: none">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='logout' style="text-decoration: none">Logout</a></h3>
	
		<br><br>
		
	<table border="1" cellpadding ="5" cellspacing ="5"> 
	<tr><th>User Id</th><th>Name</th><th>UserName</th><th>Email</th><th>Address</th><th>Contact No</th><th>Pincode</th></tr>
	<%
		int i=0;
		for(users u:list){ 
			if (u.getUsername().equals(request.getParameter("username")))  {
				i+=1; 
				%>
					<tr><td><%=u.getUserid()%></td><td><%=u.getName() %></td><td><%=u.getUsername() %></td><td><%=u.getUseremail()%></td><td><%=u.getAdress()%></td><td><%=u.getContactno()%></td><td><%=u.getPincode()%></td></tr>
				<%
				}
			}
		if (i==0){
			%>username not found!<% 
		}
	%>
	</table>
		
		
	</div>
	
	
	

</body>
</html>