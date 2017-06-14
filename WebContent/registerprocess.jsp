<%@page import="java.sql.*" %>
<%
	if("employer".equals(request.getParameter("employer")))
	{
		try
		{
			PreparedStatement ps=(PreparedStatement)application.getAttribute("employerReg");
			ps.setString(1,request.getParameter("name"));
			ps.setString(2,request.getParameter("cname"));
			ps.setString(3,request.getParameter("email"));
			ps.setString(4,request.getParameter("phone"));
			ps.setString(5,request.getParameter("password"));
			ps.setString(6,request.getParameter("gender"));
			ps.executeUpdate();
			session.setAttribute("msg","Account  created succesfully, plz login.");
		    response.sendRedirect("employer_login.jsp");
		}catch(Exception ex)
	    {
	        if(ex instanceof SQLIntegrityConstraintViolationException)
	        {
	                session.setAttribute("msg","Phone number already exists !.");
	        }
	        else{
	                session.setAttribute("msg","Failed to Register: "+ex);
	        }
	        response.sendRedirect("employer_register.jsp");				
	    }
		
	}

	if("employee".equals(request.getParameter("employee")))
	{
		try
		{
			PreparedStatement ps=(PreparedStatement)application.getAttribute("employeeReg");
			ps.setString(1,request.getParameter("name"));
			ps.setString(2,request.getParameter("email"));
			ps.setString(3,request.getParameter("phone"));
			ps.setString(4,request.getParameter("dob"));
			ps.setString(5,request.getParameter("password"));
			ps.setString(6,request.getParameter("branch"));
			ps.setString(7,request.getParameter("gender"));
			ps.setString(8,request.getParameter("status"));
			ps.executeUpdate();
			session.setAttribute("msg","Account  created succesfully, plz login.");
		    response.sendRedirect("employee_login.jsp");
		}catch(Exception ex)
	    {
	        if(ex instanceof SQLIntegrityConstraintViolationException)
	        {
	                session.setAttribute("msg","Phone number already exists !.");
	        }
	        else{
	                session.setAttribute("msg","Failed to Register: "+ex);
	        }
	        response.sendRedirect("employee_register.jsp");				
	    }
	}
%>