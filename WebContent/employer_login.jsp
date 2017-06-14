<!DOCTYPE html>
<html lang="en">

<head>
    <title>Job Listing || employer login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="footer.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        
        *[role="form"] {
            max-width: 530px;
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
                <a class="navbar-brand" href="index.jsp">JobListing</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="employee_login.jsp"><span class="glyphicon glyphicon-user"></span> Login as Job Seeker</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">

        <!-- Modal -->
        <div class="modal fade" id="forgotPassword" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Forgot password</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" action="send_employer_password.jsp" role="form">
                            <div class="form-group">
                                <div class="col-sm-9">
                                    <input type="email" id="email"  name="email" maxlength="60" title="example@mail.com" placeholder="Email" pattern="[A-Za-z0-9._%+-]+@[A-Za-z.-]+\.[A-Za-z]{1,63}$" id="email" name="email" maxlength="40" placeholder="Email" class="form-control" required="required">
                                </div>
                                <br/>
                                <br/>
                                <div class="col-sm-9">
                                    <input type="submit" class="form-control" value="Send password">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <form class="form-horizontal" action="employerloginprocess.jsp" method="post" role="form">
            <h3>Recruiter Login Form</h3>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                    <input type="email" title="example@mail.com" placeholder="Email" pattern="[A-Za-z0-9._%+-]+@[A-Za-z.-]+\.[A-Za-z]{1,63}$" id="email" name="email" maxlength="40" placeholder="Email" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                    <input type="password" name="password" maxlength="20" id="password" placeholder="Password" class="form-control" required>
                    <input type="hidden" name="employer" value="employer" />

                    <%
							String msg=(String)session.getAttribute("msg");
							if(msg!=null)
							{
								out.println("<font color='red'>"+msg+"</font>");
								session.setAttribute("msg",null);
							}
						%>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <a href="#" data-toggle="modal" data-target="#forgotPassword">forgot password !!</a>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <center> <b>OR</b></center>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <a href="employer_register.jsp" class="btn btn-success btn-block">Register as Recruiter</a>
                </div>
            </div>
        </form>
        <!-- /form -->
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
                            <h3>Help <span>& Support</span></h3>
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

            <div class="footer-bottom">
                <div class="container">
                    <div class="pull-center">All right reserved.</div>
                </div>
            </div>
    </div>
    <!--/.footer-bottom-->
    </footer>
    </div>
    <!-- ./container -->
</body>

</html>