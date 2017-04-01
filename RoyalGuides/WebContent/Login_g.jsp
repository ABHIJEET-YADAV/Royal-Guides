<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="raj.DBinfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection c=DBinfo.con;
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	PreparedStatement p=c.prepareStatement("select * from login where type=\"g\" and username=\""+username+"\" and password=\""+password+"\"");
	ResultSet r=p.executeQuery();
	if(r.next())
	{
		%><jsp:forward page="logguide.html" /><%  
	}
	else
	{
		%><jsp:forward page="index.html" /><%
	}
%>
</body>
</html>