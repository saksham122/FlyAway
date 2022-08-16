<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@ page import="com.business.Search"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
<%
	try {
		Class.forName("com.mysql.jdbc.Driver");

	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	%>
	<center>
	<h2 align="center">
		<span><strong>Results</strong></span>
	</h2>
	<p align="center">
		<span><strong> Available Flights <%=Search.source%>
				to <%=Search.destination%> <br> Select Date : <%=Search.date%>
				(<%=Search.day%>) <br> No of Persons : <%=Search.persons%> <br>
				<table border="1" style="width: 1000px; text-align: center">
					<thead>
						<tr>
							<th scope="col">Flight Number</th>
							<th scope="col">Name</th>
							<th scope="col">Boarding</th>
							<th scope="col">Destination</th>
							<th scope="col">Day</th>
							<th scope="col">Price PP</th>
						</tr>
					</thead>
					<%
					try {
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "root");
						Statement statement = con.createStatement();
						ResultSet resultSet = statement.executeQuery("SELECT * FROM flyaway.info;");
						while (resultSet.next()) {
					%>

					<tbody style="width: 1000px; text-align: center">
						<tr>
							<td><%=resultSet.getString("id")%></td>
							<td><%=resultSet.getString("name")%></td>
							<td><%=Search.source%></td>
							<td><%=Search.destination%></td>
							<td><%=Search.date%></td>
							<td><%=resultSet.getString("price")%></td>
						</tr>
					</tbody>
					<td>
					
						<form action="Registration.jsp" method="post">
							<input type="hidden" name="name"
								value="<%=resultSet.getString("name")%>"> <input
								type="hidden" name="price"
								value="<%=resultSet.getString("price")%>"> 
								<input
								type="hidden" name="id"
								value="<%=resultSet.getString("id")%>"> 
								<input type="submit" value="Submit">								
						</form>
					</td>
					<%
					}
					}
						catch (Exception e) {
					e.printStackTrace();
					}
					
					%>
				</table>
	
	</center>

</body>
</html>