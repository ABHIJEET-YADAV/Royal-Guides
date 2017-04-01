<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>

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
<%String prn=request.getParameter("PRN"); %>
<%String sta=request.getParameter("STATUS"); %>

<%
Connection c=DBinfo.con;
try {
	PreparedStatement p=c.prepareStatement("update transaction set status=\""+sta+"\" where PRN=\""+prn+"\"");
	
	p.executeUpdate();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<h3>
PRN : <%=prn %><br>
STATUS : <%=sta %>
</h3>
<a href="index.html">redirect to home page</a>
</body>
</html>