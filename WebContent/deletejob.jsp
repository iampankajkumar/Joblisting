<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%
String n=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
	if(n!=null)
	{
		PreparedStatement ps=(PreparedStatement)application.getAttribute("deleteJob");
		ps.setInt(1,Integer.parseInt(request.getParameter("id")));
		ps.executeUpdate();
		response.sendRedirect("employer_home.jsp");
	}	
	else
	{
	    session.setAttribute("msg","Plz login First");
	    response.sendRedirect("employer_login.jsp");
	}
%> 