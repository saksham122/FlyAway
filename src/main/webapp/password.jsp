<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.sev.Login"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<h1>Password Change</h1>
	<%
	if (Login.isLoggedIn) {
	%>
	<form action="ChangePassword" method="post">
		<div>
			<label class="sr-only">Email address : sakshamtiwari@flayaway.com</label>
		</div>
		<div class="form-group mx-sm-3 mb-2">
			<label for="inputPassword" class="sr-only">New Password</label> <input
				type="password" name="passwordEntered" class="form-control"
				id="inputPassword" placeholder="Enter a new password"> <br>
			<small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp;
				Current Password :&nbsp;<%=Login.password%></small>
		</div>
		<button type="submit" class="btn btn-info mb-2">Change
			Password</button>
	</form>
	<%
	} else {
	out.print("You must Login first");
	}
	%>

</body>
</html>