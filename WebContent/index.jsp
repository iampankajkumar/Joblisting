<%@page import="java.sql.*"%>
    <!DOCTYPE html>
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
                    <a class="navbar-brand" href="index.jsp">JobListing</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="employee_login.jsp"><span class="glyphicon glyphicon-user"></span>  Login as Job Seeker</a></li>
                            <li><a href="employer_login.jsp"><span class="glyphicon glyphicon-log-in"></span>  Login as Recruiter</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <blockquote class="">
                        <h3>For Recruiter</h3></blockquote>
                    <p class="text-warning">Please Register and Upload jobs</p><a href="employer_register.jsp" class="btn btn-success">Please Register</a>
                    <br/>
                    <br/>
                </div>
                <div class="col-sm-6">
                    <blockquote class="">
                        <h3>For Job Seeker</h3></blockquote>
                    <p class="text-warning">Please Register and give test to apply for jobs</p><a href="employee_register.jsp" class="btn btn-success">Please Register</a>
                </div>
            </div>
            <br/>
            <div class="container">
                <div>
                    <center>
                        <h2 class="bg-primary">List Of All The Jobs</h2></center>
                </div>
                <div>
                    <%
    	Statement st=(Statement)application.getAttribute("st");
        ResultSet rs=st.executeQuery("select * from job_details");
        	%>
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
         	while(rs.next()){
         		%>
                                    <tr>
                                        <td>
                                            <%=rs.getString("job_title")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("skills")%>
                                        </td>
                                        <td>
                                            <%out.println(rs.getInt("salary")/100000.0);%> LPA</td>
                                        <td>
                                            <%=rs.getString("location")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("last_date")%>
                                        </td>
                                        <td><a href='employee_login.jsp'>Apply</a></td>
                                    </tr>
                                    <%
         	}
        %>

                            </tbody>
                        </table>
                        <%
    %>
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
                    <!--/.footer-->
                </footer>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="pull-center">All right reserved.</div>
                    </div>
                </div>
            </div>
            <!--/.footer-bottom-->

        </div>

        <script type="text/javascript">
            $(document).ready(function() {
                $('#example').DataTable();
            });
        </script>
        <!--FOOTER 2-->

    </body>

    </html>