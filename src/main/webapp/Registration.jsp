<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.business.Booking"%>
    <%
Booking.bid = request.getParameter("id");
Booking.bprice = Integer.parseInt(request.getParameter("price"));
Booking.bname = request.getParameter("name");
Booking.aadhar = request.getParameter("aadhar");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<center>
<h1>Please Fill The Details</h1>
	<form action="Payment.jsp" method="post">
		<label>Name</label><br> <input type="text" name="pname" required placeholder="Enter the name"><br>
		<label>Email ID</label><br> <input type="email" name="email"
			required placeholder="Enter the emailid"><br> <label>Phone Number</label><br> <input
			type="text" name="phone" required maxlength="10" placeholder="Enter 10 digit number"><br> <label>Aadhar
			Details</label><br> <input type="text" name="aadhar" maxlength="12" required placeholder="Enter aadhardetails"><br>
		<br> <input type="checkbox" value="Agree the Term and Condition"
			required>Agree the Term and Condition<br>
		<br>
		<button>Submit</button>
	</form>
	</center>

</body>
</html>