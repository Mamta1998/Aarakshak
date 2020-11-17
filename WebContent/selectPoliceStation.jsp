<!-- Program to select police Station-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="database.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Your Police Station</title>
</head>
<body>
	<%
		try {
			String policeStation=request.getParameter("policeStation");
				HttpSession sess=request.getSession();
				sess.setAttribute("policeStation",policeStation);
				response.sendRedirect("adminMenu.jsp");
				} catch (Exception e) {
			e.getMessage();
		}
	%>

</body>
</html>