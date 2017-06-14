<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="mail.Mailer" %>
    <%@page import="java.sql.*" %>
<%
	PreparedStatement ps=(PreparedStatement)application.getAttribute("getEmployerPassword");
	ps.setString(1,request.getParameter("email"));
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		Mailer.send("pankajkumar.01869@gmail.com","pdw370//",
				request.getParameter("email"),
				"Password",rs.getString("password")+" is your password");	
		session.setAttribute("msg","password sent to your email !!");
	}
	else
	{
		session.setAttribute("msg","email "+request.getParameter("email")+" does not exist");
	}
	response.sendRedirect("employer_login.jsp");
%>