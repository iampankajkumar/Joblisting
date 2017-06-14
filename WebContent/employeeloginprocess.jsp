<%@page import="java.sql.*"%>
<% 
	if("employee".equals(request.getParameter("employee")))
	{
		String u=request.getParameter("email");
		String p=request.getParameter("password");
		PreparedStatement employeeLog=
		(PreparedStatement)application.getAttribute("employeeLog");
		employeeLog.setString(1,u);
		employeeLog.setString(2,p);
		ResultSet rs= employeeLog.executeQuery();
		if(rs.next())
		{
		    session.setAttribute("email",rs.getString("email")); 
		    session.setAttribute("name",rs.getString("name"));    
			if(rs.getString("status").equals("false"))
			{
				session.setAttribute("msg","please clear test before applying to jobs !");
				response.sendRedirect("online-test.jsp");
			}
			else
				response.sendRedirect("employee_home.jsp");
		}
		else
		{
		    session.setAttribute("msg","Invalid username or password !!");
		    response.sendRedirect("employee_login.jsp");
		} 
	}
%>