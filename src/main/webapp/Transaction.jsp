<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.business.Search"%>
<%@ page import="com.business.Booking"%>
<%
Booking.nameoncard = request.getParameter("nameoncard");
Booking.carddetails = request.getParameter("carddetails");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>
<h1 align="center">Thank you for Visiting FlyAway have A Nice And Safe Journey</h1>
	<p align="center"><span ><%=Search.source%> to <%=Search.destination%> || <%=Search.date%>
		(<%=Search.day%>)</span></p>
			<p align="center"><%=Booking.bid%>
			-
			<%=Booking.bname%>
			(Persons
			<%=Search.persons%>)
		</p>
		<br> <br>
		<h3>
			<strong>Summary</strong>
		</h3>
		<h3>
			Booking Name-<%=Booking.pname%>
			| Email-
			<%=Booking.pemail%>
			| Phone-
			<%=Booking.pphone%>
			|Aadhar-
			<%=Booking.aadhar%>
			</h3>
		<br>
		<h3>
			<strong>Payment Summary</strong>
		</h3>
		<h4>
			Payment By-<%=Booking.nameoncard%>
			| Card No-
			<%=Booking.carddetails%></h4>
		<br>
		<h2 align="right">
			<strong>Total Paid- Rs.<%=Search.persons * Booking.bprice%></strong>
		</h2>
		<button onclick="window.print()">Print the Ticket</button>
		<a href="index.jsp"><button type="submit">Main Menu</button></a>

</body>
</html>