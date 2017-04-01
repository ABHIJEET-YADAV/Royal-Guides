<%@page import="raj.DBinfo"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="md/css/mdb.min.css" rel="stylesheet">
		<link href="md/css/style.css" rel="stylesheet">
    </head>
    <body>

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
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
<%
	String from=request.getParameter("from");
	String days=request.getParameter("days");
	String city=request.getParameter("city");
    
	Connection con=DBinfo.con;

	PreparedStatement ps = con.prepareStatement("select * from guide_date,(select * from guide where city=\""+city+"\") gui where guide_date.username=gui.username and from_date<=\'"+from+"\' and to_date>=\'"+from+"\' and SUBDATE(to_date,INTERVAL "+days+" DAY)>=\'"+from+"\'");
	ResultSet res=(ResultSet) ps.executeQuery();
	
	while(res.next()){%>
<div class="col-md-3">

    <!--Card-->
    <div class="card card-cascade">

        <!--Card image-->
        <div class="view overlay hm-white-slight text-center">
            <div class="row">
                <div class="col-lg-2">
                    </div>
                <div class="col-lg-8">
            <img src="img/def.png" class="img-fluid img-responsive" style="width:100%;max-width:200px;"alt="">
            <a>
                <div class="mask waves-effect waves-light"></div>
            </a>
                </div>
                <div class="col-lg-2">
                    </div>
        </div>
        </div>
        <!--/.Card image-->

        <!--Card content-->
        <div class="card-block text-center">
            <!--Title-->
            <h3 class="card-title"><strong><%=res.getString(6)%></strong></h3>
            <h5><%=res.getString(8) %></h5>

            <p class="card-text"><%=res.getString(7) %>
            </p>
		<form action="hire.jsp">
		<input type=hidden name="from" value=<%=from%> />
		
		<input type=hidden name="user" value=<%=res.getString(1)%> />
		<input type=hidden name="days" value=<%=days%> />
		<input type=hidden name="username" value=<%=(String)session.getAttribute("userID")%> />
		 <button type="submit" class="btn btn-default btn-lg">Hire!</button>
		</form>
                           

        </div>
        <!--/.Card content-->

    </div>
    <!--/.Card-->

</div>
<% 	}
	
	%>




    </div>
    </div>
    </body>
</html>