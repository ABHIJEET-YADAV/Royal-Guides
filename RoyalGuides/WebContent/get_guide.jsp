
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/new-age.min.home.css" rel="stylesheet">
		
        <style>

        </style>

    </head>
    <body>
   <%
   String userIDKey = new String("userID");
		   String userID = new String();

		   // Check if this is new comer on your web page.
		   if (session.getAttribute(userIDKey)==null){
		      
		      
			
		   } 
		   
		   
		   %>
        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a href="index.html" class="navbar-brand" style="font-size: 25px" href="#page-top"> 
                <b>Royal Guides</b>
                </a>
            </div>
            <div class="nav navbar-nav navbar-right">
                <a href="index.html" class="navbar-brand" style="font-size: 25px" href="#page-top"> 
                   <span><img class="img-responsive" src="img/ssologo.png"  style="width:100%;max-width:100px;" alt="Logo"> </span>
                </a>
            </div>
        </div>
        </nav>
    <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
                <div class="text-center">
                    <h3>Enter your Tour Details.</h3>
                </div>
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
								<div id="register-form-link"><h2><b>Tour Details</b> Form</h2></div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="getguide.jsp" method="post" role="form" style="display: block;">
			
									<div class="form-group">
                                        <h4>Place to Visit:</h4>
										<input type="text" name="city" id="city" tabindex="2" class="form-control" placeholder="Place" value="" required>
									</div>
									
									<div class="form-group">
                                        <h4>Starting Date of Tour:</h4>
										<input type="date" name="from" id="date" tabindex="2" class="form-control" placeholder="Date of Check-in" value="" required>
									</div>
									
                                    <div class="form-group">
                                        <h4>Total Number of days of Tour</h4>
										<input type="int" name="days" id="days" tabindex="2" class="form-control" placeholder="Toatal Days" value="" required>
									</div>
									<input type=hidden name="username" value=<%=(String)session.getAttribute("userID")%>/>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Check Guides">
											</div>
										</div>
									</div>
									
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    <script>
        $(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
    </script>
    </body>
</html>