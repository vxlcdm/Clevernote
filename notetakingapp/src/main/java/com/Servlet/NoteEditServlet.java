package com.Servlet;

import jakarta.servlet.ServletException;	
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import jakarta.servlet.http.HttpSession;

import com.Dao.PostDao;
import com.db.DbConnect;

/**
 * Servlet implementation class NoteEditServlet
 */
public class NoteEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public NoteEditServlet() {
        super();
       
    }

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			
			   
			Integer noteid= Integer.parseInt(request.getParameter("noteid"));
			
			String Title=request.getParameter("title");
			String Content= request.getParameter("content");

			PostDao dao=new PostDao(DbConnect.getConn());
			
		boolean f	=dao.PostUpdate(noteid, Title, Content);
			if(f)
			{
				System.out.println("data update success" )  ;
				
				HttpSession session=request.getSession();
				session.setAttribute("updtmsg", "Note Updated successfully");
				response.sendRedirect("accountpage.jsp");
				
				
				
				
				
				
			}else
			{
				System.out.println("nothing worked bro ");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
