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
<title>Developer Verify</title>
</head>
<body>
	
	<%
		try {
			String user = request.getParameter("user");
			String password = request.getParameter("password");
			String check = null;
			
			PrintWriter Sout = response.getWriter();
			Connection conn = DBConnection.getConnection();
			String query = "select password from developer where id=?";
			PreparedStatement myStmt = conn.prepareStatement(query);
			myStmt.setString(1, user);

			ResultSet myrs = myStmt.executeQuery();

			while (myrs.next()) {

				check = myrs.getString("password");
			}

			if (password.equals(check)) {

				HttpSession sess=request.getSession();
				sess.setAttribute("developer",user);
				response.sendRedirect("adminMenu.jsp");
				
		
			} else {
				Sout.println("invalid details May be your Id or password is wrong");

			}
			myStmt.close();
			conn.close();
		} catch (Exception e) {
			e.getMessage();
		}
	%>
</body>
</html>