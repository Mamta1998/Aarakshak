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
 * Servlet implementation class Update_Contact
 */
@WebServlet("/Update_Contact")
public class Update_Contact extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try
			{
			PrintWriter out=response.getWriter();	
			String contact=request.getParameter("contact");
			String status=request.getParameter("status");
			Contact_pojo obj=new Contact_pojo();
			obj.setStatus(status);
			obj.setContactNo(contact);
			Database db=new Database();
			db.updateContact(obj);
			
			RequestDispatcher rs=request.getRequestDispatcher("UpdateContact.jsp");
			response.setContentType("text/html;charset=UTF-8");
			rs.include(request, response);
			}
			catch(Exception e)
			{
				
			}
			}

		

		}


