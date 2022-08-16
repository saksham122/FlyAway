<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book The Tickets</title>
</head>
<body>
<center>
<h1>Please Fill The Details</h1>
	<form action="Servlet" method="post"  >
		<label>Date</label><br> <input type="date"
			name="date"><br> <label>Boarding</label><br> <select
			name="source">
			<option value="Delhi">Delhi</option>
			<option value="Chandausi">Chandausi</option>
			<option value="Dehradoon">Dehradoon</option>
			<option value="Moradabad">Moradabad</option>
		</select><br> <label>Destination</label><br> <select
			name="destination">
			<option value="Dehradoon">Dehradoon</option>
			<option value="Delhi">Delhi</option>
			<option value="Chandausi">Chandausi</option>
			<option value="Moradabad">Moradabad</option>
		</select><br> <label>No of Persons</label><br> <input type="number"
			name="person" placeholder="Persons" Border="1" style="width: 90px" required="required"><br>
		<br>
		<button type="submit" value="Submit">Sumbit</button>
	</form>

</center>

</body>
</html>