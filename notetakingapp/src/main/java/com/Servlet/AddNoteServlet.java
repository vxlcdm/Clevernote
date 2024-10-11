package com.Servlet;
import com.User.*;			
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.User.Content;
import com.Dao.PostDao;
import com.db.DbConnect;
import com.User.Content;


/**
 * Servlet implementation class AddNoteServlet
 */
public class AddNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int uid = Integer.parseInt(request.getParameter("uid"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		 
		 
		
		PostDao dao= new PostDao(DbConnect.getConn());
		boolean f=dao.Addnotes(title, content, uid);
		HttpSession session2;
		if(f)
		{
			System.out.println("datainsertsuccessful");
			  session2=request.getSession();
			session2.setAttribute("ncs", "Note created");
			response.sendRedirect("accountpage.jsp");
		}
		else
		{
			System.out.println("FAILURE");
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
