<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

            		String sn=request.getParameter("ver");

					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/joblisting","root","");
                    //Connection con=DriverManager.getConnection("jdbc:mysql://node20622-node1.njs.jelastic.vps-host.net/joblisting","root","BLVvst31746");
					Statement st=con.createStatement();
                    //ResultSet rs = st.executeQuery("select * from emp where empno="+sn);
                    ResultSet rs = st.executeQuery("select email from employer_details where email='"+sn+"'");  // this is for name
                    if(rs.next())
                    {    
                        out.println("<font color=red>");
                        out.println("email not available !");
                        out.println("</font>");

                    }else {
                        out.println("");

                    }

	rs.close();
	st.close();
	con.close();

%>