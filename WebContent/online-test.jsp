<%@page import="java.sql.*"%>
    <%
String n=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
if(n!=null)
{
	%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Job Listing || start test</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link rel="stylesheet" href="footer.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="//code.jquery.com/jquery-1.12.4.js"></script>
            <script type="text/javascript">
                function loadSection(link) {

                    //alert(link);
                    //  parent.document.frames['myiframe'].src='sample.jsp';
                    //  parent.document.getElementById('myiframe').location = link; 
                    //  alert(parent.window.frames['myiframe'].location);
                    myframe = parent.document.getElementById('myiframe');

                    if (myframe.src) {
                        myframe.src = link;
                    } else if (myframe.contentWindow !== null && myframe.contentWindow.location !== null) {
                        myframe.contentWindow.location = link;
                    } else {
                        myframe.setAttribute('src', link);
                    }

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
                
                .single {
                    padding: 5em 0;
                }
                
                .single_img {
                    padding-left: 0;
                }
                
                .single_right h3 {
                    color: #000;
                    font-size: 1.5em;
                    font-weight: 400;
                    margin-bottom: 1em;
                }
                
                .single h2,
                .content_bottom h3,
                .about_bottom h3 {
                    color: #000;
                    font-size: 2em;
                    margin-bottom: 1.5em;
                    font-weight: 400;
                    text-align: center;
                }
                /* -- following --*/
                
                .single h2::after,
                .content_bottom h3:after,
                .grid_1 h3:after,
                .about_bottom h3:after {
                    background: #f15f43;
                    content: "";
                    display: block;
                    height: 5px;
                    width: 60px;
                    margin: 0 auto;
                }
                
                #test li {
                    font-size: 20px;
                    font-weight: bold;
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
                        <li class="dropdown"><a href="employee_logout.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="container">
                <div class="single">
                    <div class="form-container">
                        <h2>Start Online Test Here</h2>
                        <%
			String msg=(String)session.getAttribute("msg");
			if(msg!=null)
			{
				out.println("<font color='red'>"+msg+"</font>");
				session.setAttribute("msg",null);
			}
		%>
                            <blockquote class="text text-success">Score best to get best job</blockquote>
                            <ul id="test">
                                <b class="text text-danger">Read instructions carefully before start</b>
                                <br/>
                                <li>Your job options will depend on your score.</li>
                                 <table class="table table-stripped">
								    <thead>
								      <tr>
								        <th>score</th>
								        <th>job opportunities</th>
								      </tr>
								    </thead>
								    <tbody>
								      <tr>
								        <td>Score >= 60%</td>
								        <td>Package > 10 Lacs</td>
								      </tr>
								      <tr>
								        <td>60 > Score >= 40%</td>
								        <td>Package > 5 Lacs</td>
								      </tr>
								      <tr>
								        <td>Below 40%</td>
								        <td>Package < =3 Lacs </td>
								      </tr>
								    </tbody>
								  </table>
                                        <li>This is a
                                            <mark>30 minute test containing 25 questions</mark> from C language and Aptitude.</li>
                                        <li>After
                                            <mark>30 minute test will Automatically terminated</mark>
                                        </li>
                                        <li>Now you can start the test, "ALL THE BEST"</li>
                                        <br/>
                                        <a href="test.jsp" class="btn btn-success">Start Test</a>
                            </ul>
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
            </div>
        </body>

        </html>
        <%
}	
else
{
    session.setAttribute("msg","Plz login First");
    response.sendRedirect("employee_login.jsp");
}
%>