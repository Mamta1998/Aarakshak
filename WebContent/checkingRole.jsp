<!-- Program to verify user and checking its role i.e whether user is developer or police officer(admin) -->
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
	<title>Login</title>
</head>
<body>
	<%
	try{
		String user = request.getParameter("UserId");
		String password = request.getParameter("password");
		
		String check = null;
		String role = null;
		
		PrintWriter Sout = response.getWriter();
		Connection conn = DBConnection.getConnection();
		
		String query = "select password,role from admin where adminID=?";
		PreparedStatement myStmt = conn.prepareStatement(query);
		myStmt.setString(1, user);
		
		ResultSet myrs = myStmt.executeQuery();

		while (myrs.next()) {

			check = myrs.getString("password");
			role=myrs.getString("role");
		}

		if (password.equals(check)) {

			HttpSession sess=request.getSession();
			sess.setAttribute("admin",user);
			
				if(role.equals("D"))
				{
					response.sendRedirect("developerLogin.jsp");
				}
				else
				{
					//here admin means police officer
					response.sendRedirect("adminLogin.jsp");
				}
			
	
		} else {
			Sout.println("invalid details May be your Id or password is wrong");

		}
		myStmt.close();
		conn.close();
}
	catch(Exception e)
		{
			e.getMessage();
		}
	
	%>
</body>
</html>