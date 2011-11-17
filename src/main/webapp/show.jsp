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
        <%
		PersonManager pm = (PersonManager) application
			.getAttribute("personManager");
		String personId = request.getParameter("id");
		Person person = null;
		if(personId != null)
			person = pm.getPerson(new Long(personId));
		if(person != null)
		{
			%>
			<h1>Person details</h1>
			Name: <%= person.getName() %> <br />
			Year of birth: <%= person.getYob() %> <br />
			Database id: <%= person.getId() %> <br />
			<a href="delete.jsp?delList=<%= person.getId() %>"> Delete this person</a> <br />
			<%
		}else
		{
		%>
			No id selected, or no person with such id!
		<%
		}
		%>
		<a href="start.jsp"> Add new person </a> <br />
		<a href="all.jsp"> Persons list </a> <br />
    </body>
</html>
