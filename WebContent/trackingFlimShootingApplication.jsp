<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="database.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Status</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.box {
			border: 4px solid #000065;
			width: 90%;
			height: 300px;
			padding: 100px 10px 20px 10px;
			margin: 0px 40px 0px 40px;
		}
		
		.block {
			background-color: transparent;
			width: 100px;
			border: 5px solid #000065;
			padding: 15px;
			margin: 20px;
			margin-top:1px;
			font-family:monospace;
			color:#000065;
		}
		
		.middle {
			display: inline-block;
			text-align: center;
			height: 23px;
			width: 216px;
			margin-bottom: 8%;
		
		}
		
		progress {
			margin: 2% 0% 0% 1%;
			height: 40px;
			width: 95%;
			border:5px solid #000065;
		}
		
		span {
			margin-top: 15%;
			margin-bottom: 10%;
			margin-right: 10%;
		}
</style>
</head>
<body>
<%
			try {
				response.setContentType("text/html");
				String track = request.getParameter("trackid").replaceAll("\\s","");
				System.out.println(track);
				String state = null;
				Connection conn = DBConnection.getConnection();
				String query = "Select * from flimshooting where TrackID=?";
				PreparedStatement myStmt = conn.prepareStatement(query);
				myStmt.setString(1, track);
				ResultSet myrs = myStmt.executeQuery();
				if (myrs.next() == false) {
					%>
	<p>No result found</p>
	<%
		} else {%>

	<a href="index.html"><h1>Home</h1></a>
	<center>
		<h1 style="color:white;background-color:#000065;" >Your Status</h1>
	</center>

	<div class="box">

		<div class="middle">
			<div class="block">
				<p  style="font-size:21px;">Pending</p>
			</div>

		</div>

		<div class="middle">

			<div class="block">
				<p style="font-size:21px;">Received</p>
			</div>

		</div>
		<div class="middle">

			<div class="block">
				<p style="font-size:21px;">Opened</p>
			</div>

		</div>
		<div class="middle">

			<div class="block">
				<p style="font-size:21px;">Processing</p>
			</div>

		</div>
		<div class="middle">

			<div class="block">
				<p style="font-size:21px;">Solved</p>
			</div>

		</div>

		<%
					
					
					myrs.beforeFirst();

					while (myrs.next()) {
					
						state = myrs.getString("Status");
					}
					if (state.equals("Pending")) {
			%>

		<span style='font-size: 50px; margin-left: 5%;'>&#9989;</span>
		<progress id="pp" max="100"> </progress>
		<script>
				document.getElementById("pp").value ="15";
			</script>

	</div>

	<%}else if (state.equals("Recieved")) { %>
	<span style='font-size: 50px; margin-left: 5%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<progress id="pp" max="100"> </progress>
	<script>
				document.getElementById("pp").value ="36";
			</script>

	</div>

	<%} else if (state.equals("Opened")) { %>
	<span style='font-size: 50px; margin-left: 5%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<progress id="pp" max="100"> </progress>
	<script>
				document.getElementById("pp").value ="60";
			</script>

	</div>
	<%} else if (state.equals("Under Process")) { %>
	<span style='font-size: 50px; margin-left: 5%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 2%;'>&#9989;</span>
	<progress id="pp" max="100"> </progress>
	<script>
				document.getElementById("pp").value ="78";
			</script>

	</div>
	</ul>

	<%	}else if (state.equals("Solved")) {%>
	<span style='font-size: 50px; margin-left: 5%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<span style='font-size: 50px; margin-left: 3%;'>&#9989;</span>
	<progress id="pp" max="100"> </progress>
	<script>
				document.getElementById("pp").value ="100";
			</script>

	</div>
	</ul>


	<%}
	}}
	 catch (Exception e) {
					e.getMessage();
				}


			 %>

</body>
</html>