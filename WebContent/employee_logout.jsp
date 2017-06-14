<%
	String n=(String)session.getAttribute("name");
	if(n!=null)
	{
	    session.invalidate();		
	    response.sendRedirect("employee_login.jsp");
	}	
	else
	{
	    session.setAttribute("msg","Plz login First");
	    response.sendRedirect("employee_login.jsp");
	}	
%>