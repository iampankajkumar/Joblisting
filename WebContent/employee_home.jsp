<%@page import="java.sql.*"%>
    <%
String n=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
if(n!=null)
{
  int score=0;
  ResultSet getResult=null;
  Statement st=(Statement)application.getAttribute("st");
  ResultSet rs=st.executeQuery("select max(score) as score from result where email='"+(String)session.getAttribute("email")+"'");
  if(rs.next())
  {
	  score=rs.getInt("score");
		if(score==0)
		{
			session.setAttribute("msg","please clear test before applying to jobs !");
			response.sendRedirect("online-test.jsp");
		}

	  String query="select * from job_details where salary";
		if (score>=60)
		{
		   query=query + " <= 12000000 ";
		}
		else if(score < 60 && score >= 40)
		{
			query=query + " <= 500000";
		}
		else 
		{
			query=query + " <= 300000";
		}
		getResult=st.executeQuery(query);
  }
%>
        <html lang="en">

        <head>
            <title>Job Listing || home page</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link rel="stylesheet" href="footer.css">
            <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
            <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
            <script src="//code.jquery.com/jquery-1.12.4.js"></script>
            <style type="text/css">
                body {
                    background-color: black;
                    background: url(1.jpg) no-repeat center center fixed;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;
                }
            </style>
        </head>

        <body>

            <nav class="navbar navbar-inverse">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="employee_home.jsp">JobListing</a>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a href="employee_logout.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p class="text-danger">Welcome <b><%=(String)session.getAttribute("name") %></b> your online test score is :<b><%=score%></b>
                    </div>
                </div>
            </div>
            <br/>
            <div class="container">
                <div>
                    <center>
                        <h2 class="bg-primary">List Of Jobs based on your score</h2></center>
                </div>
                <div>
                    <table id="example" style="background-color: white;" class="table table-striped table-hover table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th>Job title</th>
                                <th>Skills required</th>
                                <th>Salary</th>
                                <th>Job location</th>
                                <th>Last date</th>
                                <th>Apply</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Job title</th>
                                <th>skills required</th>
                                <th>Salary</th>
                                <th>Job location</th>
                                <th>Last date</th>
                                <th>Apply</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%
              while(getResult.next())
              {
            	  %>
                                <tr>
                                    <td>
                                        <%=getResult.getString("job_title") %>
                                    </td>
                                    <td>
                                        <%=getResult.getString("skills") %>
                                    </td>
                                    <td>
                                        <%out.println(getResult.getInt("salary")/100000.0);%> LPA</td>
                                    <td>
                                        <%=getResult.getString("location") %>
                                    </td>
                                    <td>
                                        <%=getResult.getString("last_date") %>
                                    </td>
                                    <td><a target="_blank" href='apply.jsp'>Apply</a></td>
                                </tr>
                                <%
              }
            %>
                        </tbody>
                    </table>
                </div>
                <footer class="footer2">
                    <div class="footer">
                        <div class="container">
                            <div class="row">
                                <nav class="col-md-3 col-sm-6 col-xs-12">
                                    <h3>Dummy <span>categories 1</span></h3>
                                    <ul>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a> ls

                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                    </ul>
                                </nav>
                                <nav class="col-md-3 col-sm-6 col-xs-12">
                                    <h3>Dummy <span>categories 2</span></h3>
                                    <ul>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                    </ul>
                                </nav>
                                <nav class="col-md-3 col-sm-6 col-xs-12">
                                    <h3>Help <span>and  Support</span></h3>
                                    <ul>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                        <li>
                                            <a href="#">Lorem Ipsum</a>
                                        </li>
                                    </ul>
                                </nav>

                                <nav class="col-md-3 col-sm-6 col-xs-12">
                                    <ul class="social social-icon">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                    </ul>
                                </nav>

                            </div>
                            <!--/.row-->
                        </div>
                        <!--/.container-->
                    </div>v
                </footer>
                <!--/.footer-->

                <div class="footer-bottom">
                    <div class="container">
                        <div class="pull-center">All right reserved.</div>
                    </div>
                </div>
            </div>
            <!--/.footer-bottom-->
            <script type="text/javascript">
                $(document).ready(function() {
                    $('#example').DataTable();
                });
            </script>
            <!--FOOTER 2-->

        </body>

        </html>
        <%
}	
else
{
    session.setAttribute("msg","Plz login First");
    response.sendRedirect("employer_login.jsp");
}
%>