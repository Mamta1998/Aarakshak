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

/**
 * Servlet implementation class UpdateDomestic
 */
@WebServlet("/UpdateDomestic")
public class UpdateDomestic extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			PrintWriter out=response.getWriter();	
			String track=request.getParameter("TrackId");
			String status=request.getParameter("status");

			Date currentDate=new Date();
			String date=String .valueOf(currentDate.getDate());
			String month=String.valueOf(currentDate.getMonth()+1);
			String year=String.valueOf(currentDate.getYear()+1900);
			String dateUpdated=year+"-"+month+"-"+date;

			DomesticHelpPojo obj=new DomesticHelpPojo();
			obj.setStatus(status);
			obj.setTrack(track);
			obj.setDateRecentlyUpdated(dateUpdated);

			Database db=new Database();
			db.updateDomestic(obj);
		

			RequestDispatcher rs=request.getRequestDispatcher("UpdateDomestic.jsp");
			response.setContentType("text/html;charset=UTF-8");
			rs.include(request, response);
		}
		catch(Exception e)
		{
			e.getMessage();
		}
	}
}


