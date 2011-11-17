<%@page import="java.util.List"%>
<%@page import="com.example.somewebapp.domain.Person"%>
<%@page import="com.example.somewebapp.service.PersonManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person manager</title>
</head>
<body>
	<h1>All persons</h1>
	<form action="delete.jsp" method="POST">
	<table border=1>
	<tr>
		<th>.</th>
		<th>Name</th>
		<th>Year of birth</th>
		<th>Actions</th>
	</tr>
	<%
	PersonManager pm = (PersonManager) application
		.getAttribute("personManager");
	List<Person> persons = pm.getAllPersons();
	

	for(Person p: persons)
	{
		%>
		<tr>
		<td><input type="checkbox" name="delList" value="<%= p.getId() %>" /></td>
		<td><%= p.getName() %></td>
		<td><%= p.getYob() %></td>
		<td><a href="show.jsp?id=<%= p.getId() %>"> Show</a> <a href="edit.jsp?id=<%= p.getId() %>"> Edit</a></td>
		</tr>
		<%
	}
	%>
	</table>
	<input type="submit" value="Delete selected" />
	</form><br />
	
	<a href="start.jsp"> Add new person </a>
	
	
</body>
</html>
