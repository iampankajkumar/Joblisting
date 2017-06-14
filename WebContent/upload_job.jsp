<%@page import="java.sql.*"%>
<%! String[] checkbox; %>
<%
String n=(String)session.getAttribute("name");
if(n!=null)
{
   String check="";
   checkbox = request.getParameterValues("checkbox");
   if (checkbox != null) 
   {
      for (int i = 0; i < checkbox.length; i++) 
      {
    	  check=check+checkbox[i]+", ";
      }
   }
	PreparedStatement ps=(PreparedStatement)application.getAttribute("uploadJob");
	ps.setString(1,request.getParameter("dropdown"));
	ps.setString(2,check);
	ps.setFloat(3,100000*Float.parseFloat(request.getParameter("salary")));
	ps.setString(4,request.getParameter("location"));
	ps.setString(5,request.getParameter("ldate"));
	ps.setString(6,(String)session.getAttribute("email"));
	ps.executeUpdate();
	session.setAttribute("msg","Job uploaded successfully.");
	response.sendRedirect("employer_home.jsp");
}	
else
{
    session.setAttribute("msg","Plz login First");
    response.sendRedirect("employer_login.jsp");
}
%>    