package com.example.somewebapp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.somewebapp.domain.Person;
import com.example.somewebapp.service.PersonManager;
import com.example.somewebapp.service.PersonManagerInMermory;

@WebServlet(urlPatterns = "/init")
public class Start extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("person") == null) {
			Person p = new Person();
			session.setAttribute("person", p);
		}
		
		response.sendRedirect("start.jsp");
		
	}
	
	@Override
	public void init() throws ServletException {
		PersonManager pM = new PersonManagerInMermory();
		getServletContext().setAttribute("personManager", pM);
	}

}
