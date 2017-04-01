<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="raj.DBinfo"%>
<%@page import="java.sql.Connection"%>
<%@page import="raj.checksum"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Guide</title>


</script>
</head>

<body>

<%
int i=Integer.parseInt(request.getParameter("days"));
String x="#2&[W<nJ*K\"xO_z";
String PRN=Integer.toString((int)(Math.random()*999999999)+1000000);

String checksum1=checksum.checksumf("HACKATHON2017|"+PRN+"|"+(i*300)+"|"+x);
%>
	<form action="http://emitrauat.rajasthan.gov.in/payments/v1/init" method="POST">
		<input type="hidden" name="MERCHANTCODE" value="HACKATHON2017" />
		<input type="hidden" name="PRN" value=<%=PRN%> />
		<input type="hidden" name="REQTIMESTAMP" value="20160623132359958" />
		<input type="hidden" name="PURPOSE" value="Guide Booking" />
		<input type="hidden" name="AMOUNT" value=<%=i*300%> />
		<input type="hidden" name="SUCCESSURL" value="http://localhost:8080/RoyalGuides/Response.jsp" />
		<input type="hidden" name="FAILUREURL" value="http://localhost:8080/RoyalGuides/Response.jsp" />
		<input type="hidden" name="CANCELURL" value="http://localhost:8080/RoyalGuides/Response.jsp" />
		<input type="hidden" name="USERNAME" value="a" />
		<input type="hidden" name="USERMOBILE" value="7777777777" />
		<input type="hidden" name="USEREMAIL" value="abc@xyz.com" />
		<input type="hidden" name="UDF1" value=<%=request.getParameter("user")%> />
		<input type="hidden" name="UDF2" value="" />
		<input type="hidden" name="UDF3" value="" />
		<input type="hidden" name="CHECKSUM" value=<%=checksum1%> />
		<%
		Connection con=DBinfo.con;

		PreparedStatement ps = con.prepareStatement("insert into transaction values(?,?,?,?,?,?,?,?)");
		ps.setString(1,PRN);
		ps.setString(2,(new Timestamp(System.currentTimeMillis())).toString());
		ps.setString(3,request.getParameter("username"));
		ps.setString(4,request.getParameter("from") );
		ps.setInt(5,Integer.parseInt(request.getParameter("days")));
		ps.setString(6,request.getParameter("user"));
		ps.setString(7,Integer.toString(i*300));
		ps.setString(8,"Pending");
		ps.executeUpdate();
		%>
			
			
		if the page does not automatically redirects please click <button type="submit">here</button>
  </form>
</body>
</html>