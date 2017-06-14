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
            <title>Job Listing || online test</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="//code.jquery.com/jquery-1.12.4.js"></script>
            <script type="text/javascript">
                var dirty = false;
                window.onbeforeunload = function() {
                    return dirty ? "If you leave this page you will lose your unsaved changes." : null;
                }
                var total_seconds = 60 * 30;
                var c_minutes = parseInt(total_seconds / 60);
                var c_seconds = parseInt(total_seconds % 60);

                function checkTime() {
                    if (c_seconds < 10)
                        c_seconds = "0" + c_seconds;
                    if (c_minutes < 10)
                        c_minutes = "0" + c_minutes;
                    document.getElementById("remain").innerHTML = c_minutes + " : " + c_seconds;
                    if (total_seconds <= 0) {
                        setTimeout('document.form1.submit()', 1);
                    } else {
                        total_seconds = total_seconds - 1;
                        c_minutes = parseInt(total_seconds / 60);
                        c_seconds = parseInt(total_seconds % 60);
                        setTimeout("checkTime()", 1000);
                    }
                }
                setTimeout("checkTime()", 1000);

                function loadSection(link) {

                    myframe = parent.document.getElementById('myiframe');

                    if (myframe.src) {
                        myframe.src = link;
                    } else if (myframe.contentWindow !== null && myframe.contentWindow.location !== null) {
                        myframe.contentWindow.location = link;
                    } else {
                        myframe.setAttribute('src', link);
                    }

                }

                function fun() {
                    if (confirm('Are you really want to submit') == true)
                        return true;
                    else
                        return false;
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
                
                object {
                    border-radius: 0.5em;
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
                <div class="jumbotron">
                    <h3 class="text-success">ALL THE BEST</h3>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-9">
                        <object data="images/application.pdf" type="application/pdf" width="100%" height="800px">
                            <p>It appears you don't have a PDF plugin for this browser. No biggie... you can </p>
                        </object>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div>
                            <p>
                                <mark><b id="remain"></b></mark> &nbsp;&nbsp;minutes remaining</p>
                        </div>
                        <hr/>
                        <h2>Answer Sheet</h2>
                        <hr/>
                        <FORM ACTION="testprocess.jsp" METHOD="post" id="form1" name="form1" onsubmit="return fun()">
                            01.
                            <INPUT TYPE="radio" NAME="radios1" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios1" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios1" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios1" VALUE="D">D &nbsp;
                            <br/> 02.
                            <INPUT TYPE="radio" NAME="radios2" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios2" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios2" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios2" VALUE="D">D &nbsp;
                            <br/> 03.
                            <INPUT TYPE="radio" NAME="radios3" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios3" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios3" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios3" VALUE="D">D &nbsp;
                            <br/> 04.
                            <INPUT TYPE="radio" NAME="radios4" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios4" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios4" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios4" VALUE="D">D &nbsp;
                            <br/> 05.
                            <INPUT TYPE="radio" NAME="radios5" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios5" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios5" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios5" VALUE="D">D &nbsp;
                            <br/> 06.
                            <INPUT TYPE="radio" NAME="radios6" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios6" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios6" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios6" VALUE="D">D &nbsp;
                            <br/> 07.
                            <INPUT TYPE="radio" NAME="radios7" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios7" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios7" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios7" VALUE="D">D &nbsp;
                            <br/> 08.
                            <INPUT TYPE="radio" NAME="radios8" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios8" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios8" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios8" VALUE="D">D &nbsp;
                            <br/> 09.
                            <INPUT TYPE="radio" NAME="radios9" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios9" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios9" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios9" VALUE="D">D &nbsp;
                            <br/> 10.
                            <INPUT TYPE="radio" NAME="radios10" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios10" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios10" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios10" VALUE="D">D &nbsp;
                            <br/> 11.
                            <INPUT TYPE="radio" NAME="radios11" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios11" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios11" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios11" VALUE="D">D &nbsp;
                            <br/> 12.
                            <INPUT TYPE="radio" NAME="radios12" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios12" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios12" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios12" VALUE="D">D &nbsp;
                            <br/> 13.
                            <INPUT TYPE="radio" NAME="radios13" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios13" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios13" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios13" VALUE="D">D &nbsp;
                            <br/> 14.
                            <INPUT TYPE="radio" NAME="radios14" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios14" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios14" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios14" VALUE="D">D &nbsp;
                            <br/> 15.
                            <INPUT TYPE="radio" NAME="radios15" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios15" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios15" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios15" VALUE="D">D &nbsp;
                            <br/> 16.
                            <INPUT TYPE="radio" NAME="radios16" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios16" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios16" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios16" VALUE="D">D &nbsp;
                            <br/> 17.
                            <INPUT TYPE="radio" NAME="radios17" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios17" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios17" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios17" VALUE="D">D &nbsp;
                            <br/> 18.
                            <INPUT TYPE="radio" NAME="radios18" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios18" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios18" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios18" VALUE="D">D &nbsp;
                            <br/> 19.
                            <INPUT TYPE="radio" NAME="radios19" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios19" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios19" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios19" VALUE="D">D &nbsp;
                            <br/> 20.
                            <INPUT TYPE="radio" NAME="radios20" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios20" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios20" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios20" VALUE="D">D &nbsp;
                            <br/> 21.
                            <INPUT TYPE="radio" NAME="radios21" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios21" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios21" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios21" VALUE="D">D &nbsp;
                            <br/> 22.
                            <INPUT TYPE="radio" NAME="radios22" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios22" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios22" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios22" VALUE="D">D &nbsp;

                            <br/> 23.
                            <INPUT TYPE="radio" NAME="radios23" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios23" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios23" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios23" VALUE="D">D &nbsp;
                            <br/> 24.
                            <INPUT TYPE="radio" NAME="radios24" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios24" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios24" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios24" VALUE="D">D &nbsp;
                            <br/> 25.
                            <INPUT TYPE="radio" NAME="radios25" VALUE="A">A &nbsp;
                            <INPUT TYPE="radio" NAME="radios25" VALUE="B">B &nbsp;
                            <INPUT TYPE="radio" NAME="radios25" VALUE="C">C &nbsp;
                            <INPUT TYPE="radio" NAME="radios25" VALUE="D">D &nbsp;
                            <br/>
                            <br/>
                            <INPUT TYPE="submit" class="btn btn-danger" VALUE="Submit">
                        </form>
                    </div>
                </div>
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