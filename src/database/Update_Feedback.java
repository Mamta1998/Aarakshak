package database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update_Feedback
 */
@WebServlet("/Update_Feedback")
public class Update_Feedback extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		PrintWriter out=response.getWriter();	
		String contact=request.getParameter("contact");
		String status=request.getParameter("status");
		feedback_pojo obj=new feedback_pojo();
		obj.setStatus(status);
		obj.setContact(contact);;
		Database db=new Database();
		db.updateFeedback(obj);
		
		RequestDispatcher rs=request.getRequestDispatcher("UpdateFeedback.jsp");
		response.setContentType("text/html;charset=UTF-8");
		rs.include(request, response);
		}
		catch(Exception e)
		{
			
		}
		}

	
	}


