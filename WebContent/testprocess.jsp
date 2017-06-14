<%@page import="java.sql.*"%>
<%
String n=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
if(n!=null)
{
	int x=0;
	if("B".equals(request.getParameter("radios1")))		x++;
	if("B".equals(request.getParameter("radios2")))		x++;
	if("B".equals(request.getParameter("radios3")))		x++;
	if("C".equals(request.getParameter("radios4")))		x++;
	if("C".equals(request.getParameter("radios5")))		x++;
	if("B".equals(request.getParameter("radios6")))		x++;
	if("B".equals(request.getParameter("radios7")))		x++;
	if("B".equals(request.getParameter("radios8")))		x++;
	if("B".equals(request.getParameter("radios9")))		x++;
	if("C".equals(request.getParameter("radios10")))	x++;
	if("A".equals(request.getParameter("radios11")))	x++;
	if("A".equals(request.getParameter("radios12")))	x++;
	if("B".equals(request.getParameter("radios13")))	x++;
	if("C".equals(request.getParameter("radios14")))	x++;
	if("D".equals(request.getParameter("radios15")))	x++;
	if("A".equals(request.getParameter("radios16")))	x++;
	if("D".equals(request.getParameter("radios17")))	x++;
	if("B".equals(request.getParameter("radios18")))	x++;
	if("D".equals(request.getParameter("radios19")))	x++;
	if("C".equals(request.getParameter("radios20")))	x++;
	if("C".equals(request.getParameter("radios21")))	x++;
	if("B".equals(request.getParameter("radios22")))	x++;
	if("C".equals(request.getParameter("radios23")))	x++;
	if("D".equals(request.getParameter("radios24")))	x++;
	if("C".equals(request.getParameter("radios25")))	x++;
	Statement st=(Statement)application.getAttribute("st");
	st.executeUpdate("update employee_details set status='true' where email='"+email+"'");
	PreparedStatement ps=(PreparedStatement)application.getAttribute("insertResult");
	ps.setString(1,(String)session.getAttribute("email"));
	ps.setInt(2,4*x);
	ps.executeUpdate();
	session.setAttribute("score",4*x);
	response.sendRedirect("employee_home.jsp");
}	
else
{
    session.setAttribute("msg","Plz login First");
    response.sendRedirect("employee_login.jsp");
}
%>
