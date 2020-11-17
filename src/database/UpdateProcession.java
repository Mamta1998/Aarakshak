package database;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateProcession")
public class UpdateProcession extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		PrintWriter out=response.getWriter();	
		String trackid=request.getParameter("trackid");
		String status=request.getParameter("status");
		
		Date currentDate=new Date();
		String date=String .valueOf(currentDate.getDate());
		String month=String.valueOf(currentDate.getMonth()+1);
		String year=String.valueOf(currentDate.getYear()+1900);
		String dateUpdated=year+"-"+month+"-"+date;
		
		ProcessionPojo obj=new ProcessionPojo();
		obj.setStatus(status);
		obj.setTrackId(trackid);
		obj.setDateRecentlyUpdated(dateUpdated);
		
		Database db=new Database();
		db.updateProcession(obj);
		out.println("updated");
		
		RequestDispatcher rs=request.getRequestDispatcher("UpdateProcessionApplication.jsp");
		response.setContentType("text/html;charset=UTF-8");
		rs.include(request, response);
		}
		catch(Exception e)
		{
			e.getMessage();
		}
		}

	}


