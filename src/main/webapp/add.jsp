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
	<h1>Adding person</h1>

	
	<jsp:useBean id="person" class="com.example.somewebapp.domain.Person"
		scope="session" />
	<jsp:setProperty property="*" name="person" />
	
 	Person ${person.name} born in ${person.yob} added to list! <br />

	<%
		PersonManager pm = (PersonManager) application
				.getAttribute("personManager");
		Person persistedPerson = pm.addPerson(person);
	%>
	<a href="start.jsp"> Add person</a> <br />
	<a href="delete.jsp?delList=<%= persistedPerson.getId() %>"> Delete person</a> <br />
	<a href="all.jsp"> See all persons</a> <br />
	
	
</body>
</html>
