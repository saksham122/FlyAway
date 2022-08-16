<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="com.sev.Login"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");

} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Portal</title>
</head>
<body>
<h1>Admin Portal</h1>
	<%
	if (Login.isLoggedIn) {
	%>
	<table border="1" style="width:1000px; text-align:center" >
		<thead>
			<tr>
				<th scope="col">Flight ID</th>
				<th scope="col">Name</th>
				<th scope="col">Source</th>
				<th scope="col">Destination</th>
				<th scope="col">Day</th>
				<th scope="col">Ticket Price</th>
			</tr>
		</thead>
		<%
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "root");
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM flyaway.info;");
			while (resultSet.next()) {
		%>

		<tbody border="1" style="width:1000px; text-align:center">
			<tr>
				<td><%=resultSet.getInt("id")%></td>
				<td><%=resultSet.getString("name")%></td>
				<td><%=resultSet.getString("source")%></td>
				<td><%=resultSet.getString("destination")%></td>
				<td><%=resultSet.getString("days")%></td>
				<td><%=resultSet.getString("price")%></td>
			</tr>
		</tbody>



		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		} else {
		out.print("Please Login ");
		}
		%>
	</table>
	<a href="index.jsp"><button style="align:center">Logout</button></a>
	<a href="password.jsp"><button style="align:center">Change the password</button></a>

</body>
</html>