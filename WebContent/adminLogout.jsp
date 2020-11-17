<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin logout</title>
</head>
<body>

<%
HttpSession sess=request.getSession();
sess.invalidate();
%>
<h1>YOu are successfully logout..<br>
Thankyou for  visiting.
</h1>
<%
response.sendRedirect("Login.html");
%>

</body>
</html>