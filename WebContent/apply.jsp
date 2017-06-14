<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="mail.Mailer" %>
    <%@page import="java.sql.*" %>
<%
	String email=(String)session.getAttribute("email");
	Mailer.send("pankajkumar.01869@gmail.com","pdw370//",
		email,
		"Application status","you have successfully applied for the job");	
				out.println("successfully applied for the job please check your mail: "+email);
%>