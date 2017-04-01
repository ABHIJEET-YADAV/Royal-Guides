<%@page import="java.sql.ResultSet"%>

<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
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
	
	PreparedStatement p=c.prepareStatement("select * from login where username=\""+username+"\"");
	ResultSet r=p.executeQuery();
	
	if(r.next())
	{	
		out.println("cskbcnksdnc");
		
		
		String userIDKey = new String("userID");
		   String userID = new String(username);


		      
		     session.setAttribute(userIDKey, userID);

		   
		  // userID = (String)session.getAttribute(userIDKey);
		%><jsp:forward page="get_guide.jsp" /><%  
	}
	else
	{
		%><jsp:forward page="logtour.html" /><%
	}
%>
</body>
</html>