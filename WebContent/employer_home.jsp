<%@page import="java.sql.*"%>
    <%
String n=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
if(n!=null)
{
	Statement st=(Statement)application.getAttribute("st");
	ResultSet rs=st.executeQuery("select * from job_details where email='"+email+"'");
	%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Job Listing || employer home</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link rel="stylesheet" href="footer.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
            <link rel="stylesheet" href="/resources/demos/style.css">
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

            <style type="text/css">
                body {
                    background-color: black;
                    background: url(1.jpg) no-repeat center center fixed;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;
                }
                
                *[role="form"] {
                    max-width: 600px;
                    padding: 15px;
                    margin: 0 auto;
                    background-color: #fff;
                    border-radius: 0.3em;
                }
                
                *[role="form"] h3 {
                    margin-left: 5em;
                    margin-bottom: 1em;
                }
            </style>
        </head>

        <body>

            <nav class="navbar navbar-inverse">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="employer_home.jsp">JobListing</a>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a href="employer_logout.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="container">
                <form class="form-horizontal" action="upload_job.jsp" method="post" role="form">
                    <h3>Publish new job</h3>
                    <%
					String msg=(String)session.getAttribute("msg");
					if(msg!=null)
					{
						out.println("<font color='green'>"+msg+"</font>");
						session.setAttribute("msg",null);
					}
				%>
                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label">Job title</label>
                            <div class="col-sm-9">
                                <select name="dropdown">
                                    <option value="software developer" selected>Software development</option>
                                    <option value="BPO">BPO</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-3 control-label">Skills</label>
                            <div class="col-sm-9">
                                <input type="checkbox" name="checkbox" value="java"> Java &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="php"> php &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="dotnet">.net &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="c"> c &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="cplusplus"> c++ &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="asp"> asp.net &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="hibernate"> hibernate
                                <input type="checkbox" name="checkbox" value="struts"> struts &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="spring"> spring &nbsp;&nbsp;
                                <input type="checkbox" name="checkbox" value="bpo" checked="checked"> other(for BPO)
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="salary" class="col-sm-3 control-label">Salary in lacs</label>
                            <div class="col-sm-9">
                                <input type="number" id="salary" maxlength="4" name="salary" placeholder="salary" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Job Location" class="col-sm-3 control-label">Job Location</label>
                            <div class="col-sm-9">
                                <input type="text" pattern="[A-Za-z\s]$" title="invalid name (only space and characters allowed)" maxlength="50" id="location" name="location" placeholder="Job Location" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Job Location" class="col-sm-3 control-label">Last date to apply</label>
                            <div class="col-sm-9">
                                <input type="date" id="datepicker" name="dob" class="form-control" placeholder="Last date to apply" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3">
                                <button type="submit" class="btn btn-primary btn-block">Upload Job</button>
                            </div>
                        </div>
                </form>
                <!-- /form -->
            </div>
            <!-- ./container -->
            <div class="container">
                <div>
                    <center>
                        <h2 class="bg-primary">List Of Uploaded Jobs</h2></center>
                </div>

                <div>
                    <table id="example" style="background-color: white;" class="table table-striped table-hover table-bordered table-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Job title</th>
                                <th>Skills required</th>
                                <th>Salary</th>
                                <th>Job location</th>
                                <th>Last date</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Job title</th>
                                <th>skills required</th>
                                <th>Salary</th>
                                <th>Job location</th>
                                <th>Last date</th>
                                <th>Delete</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%
        	while(rs.next())
        	{
        		%>
                                <tr>
                                    <td>
                                        <%=rs.getString(1) %>
                                    </td>
                                    <td>
                                        <%=rs.getString(2) %>
                                    </td>
                                    <td>
                                        <%=rs.getString(3) %>
                                    </td>
                                    <td>
                                        <%=rs.getString(4) %>
                                    </td>
                                    <td>
                                        <%=rs.getString(5) %>
                                    </td>
                                    <td><a href="deletejob.jsp?id=<%=rs.getInt(7)%>">delete</a></td>
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
                                            <a href="#">Lorem Ipsum</a>
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
                                    <h3>Help <span>and Support</span></h3>
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
                    </div>
                </footer>
            </div>
            <!--/.footer-->

            <div class="footer-bottom">
                <div class="container">
                    <div class="pull-center">All right reserved.
                    </div>
                </div>
            </div>
            <!--/.footer-bottom-->
        </body>
        <script type="text/javascript">
            $(document).ready(function() {
                $('#example').DataTable();
            });
        </script>

        </html>
        <%
}	
else
{
    session.setAttribute("msg","Plz login First");
    response.sendRedirect("employer_login.jsp");
}
%>