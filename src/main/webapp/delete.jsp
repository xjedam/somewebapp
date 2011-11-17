<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="com.example.somewebapp.service.PersonManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		PersonManager pm = (PersonManager) application
			.getAttribute("personManager");
		String[] requestList = request.getParameterValues("delList");
		if(requestList != null)
		{
			List<Long> idList = new ArrayList<Long>();
			for(String s : requestList)
				idList.add(new Long(s));
			pm.deletePersons(idList);
	%>
	Selected persons deleted
	<% }
		else
		{
			%> Error, could not find your selection 
	<%
		}
	%>
	<a href="all.jsp"> Persons list </a>
</body>
</html>