<%@page import="java.sql.*"%>

<%
	if("employer".equals(request.getParameter("employer")))
	{
		String u=request.getParameter("email");
		String p=request.getParameter("password");
		PreparedStatement employerLog=
		(PreparedStatement)application.getAttribute("employerLog");
		employerLog.setString(1,u);
		employerLog.setString(2,p);
		ResultSet rs= employerLog.executeQuery();
		if(rs.next())
		{  
		    session.setAttribute("email",rs.getString("email")); 
		    session.setAttribute("name",rs.getString("name"));  
		    response.sendRedirect("employer_home.jsp");
		}
		else
		{
		    session.setAttribute("msg","Invalid username or password !!");
		    response.sendRedirect("employer_login.jsp");
		} 
	}
%>