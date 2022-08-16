<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.business.Booking"%>
<%@ page import="com.business.Search"%>
<%
    Booking.pname = request.getParameter("pname");
    Booking.pemail= request.getParameter("email");
    Booking.pphone= request.getParameter("phone");
    Booking.aadhar= request.getParameter("aadhar");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transcation</title>
</head>
<body>
<h1>Enter the card details</h1>
	<form action="Transaction.jsp" method="post">
		<label>Name on Card</label><br> <input type="text" name="nameoncard"
			placeholder="Enter Name on Card" required><br> <label>Card Number</label><br>
		<input type="text" name="carddetails" placeholder="Enter Name on Card" required maxlength="16"><br>
		<label>CVV</label><br>
		<input type="text" name="cvv" placeholder="Enter the cvv number"required="required" maxlength="3"><br><br>
		<label>Total Price=</label>
		<%=Booking.bprice%>
		X
		<%=Search.persons%>
		Persons = Rs.<%=Booking.bprice * Search.persons%>\<br><br>
		<button type="submit" value="Submit">Submit</button>
	</form>

</body>
</html>