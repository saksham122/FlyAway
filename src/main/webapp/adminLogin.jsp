<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<h1>Admin login</h1>
	<form action="Login" method="post">
		<label>Admin Email Address</label> <input type="email" name="adminemail"><br>
		<br> <label>Password</label>
		<input type="password" name="adminpassword"><br> <br>
		<button type="submit" value="Submit">Submit</button>
	</form>

</body>
</html>