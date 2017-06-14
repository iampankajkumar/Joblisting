<!DOCTYPE html>
<html lang="en">

<head>
    <title>Job Listing || employer register</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="footer.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        function fun() {
            if (document.getElementById("cpassword").value != document.getElementById("password").value) {
                document.getElementById('msg').innerHTML = "password does not match";
                return false;
            } else {
                if (document.getElementById("branch").value == "selected") {
                    document.getElementById('msg').innerHTML = "Please select a branch";
                    return false;
                } else {
                    return true;
                }
            }
        }

        function loadXMLDoc() {
            var xmlhttp;
            var k = document.getElementById("email").value;
            var urls = "employerAjax.jsp?ver=" + k;

            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            } else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4) {
                    //document.getElementById("err").style.color="red";
                    document.getElementById("err").innerHTML = xmlhttp.responseText;

                }
            }
            xmlhttp.open("GET", urls, true);
            xmlhttp.send();
        }
    </script>
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
                        <li><a href="employer_login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login as Recruiter</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <form class="form-horizontal" action="registerprocess.jsp" role="form" method="post" onsubmit="return fun()">
            <h3>Recruiter Registration Form</h3>
            <div class="form-group">
                <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                <div class="col-sm-9">
                    <input type="text" title="invalid name (only space and characters allowed)" pattern="[A-Za-z\s]{1,50}$" maxlength="40" id="firstName" name="name" placeholder="Full Name" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Company's Name</label>
                <div class="col-sm-9">
                    <input type="text" pattern="[A-Za-z\s]{1,50}$" maxlength="50" title="invalid name (only space and characters allowed)" maxlength="40" id="cname" name="cname" placeholder="Company Name" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                    <input type="email" id="email" name="email" title="example@mail.com" placeholder="Email" pattern="[A-Za-z0-9._%+-]+@[A-Za-z.-]+\.[A-Za-z]{1,63}$" class="form-control" onkeyup="loadXMLDoc()" required>
                    <span id="err"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="phone" class="col-sm-3 control-label">Phone</label>
                <div class="col-sm-9">
                    <input type="tel" id="phone" name="phone" pattern="[789][0-9]{9,9}$" title="only digits allowed (first digit must be 7,8 or 9)" maxlength="10" placeholder="Enter 10 digit Phone number" class="form-control" required="required">
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
                <label for="password" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                    <input type="password" name="password" maxlength="20" title="maximum password length is 20" id="password" placeholder="Password" class="form-control" required="required">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Confirm Password</label>
                <div class="col-sm-9">
                    <input type="password" name="cpassword" id="cpassword" maxlength="20" title="maximum password length is 20" placeholder="Confirm Password" class="form-control" required="required">
                    <span id="msg" style="color:red;"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Gender</label>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" id="femaleRadio" name="gender" value="Female" checked>Female
                            </label>
                        </div>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" id="maleRadio" name="gender" value="Male">Male
                            </label>
                        </div>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" id="uncknownRadio" name="gender" value="Unknown">Unknown
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.form-group -->
            <input type="hidden" name="employer" id="employer" value="employer" />
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <center><b>OR</b></center>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <a href="employer_login.jsp" class="btn btn-success btn-block">Login as Recruiter</a>
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
</body>

</html>