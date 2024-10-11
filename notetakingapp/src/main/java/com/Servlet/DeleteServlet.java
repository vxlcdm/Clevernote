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
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		
		Integer noteid = Integer.parseInt(request.getParameter("note_id")); 
		
	PostDao dao = new PostDao(DbConnect.getConn());
	boolean f=dao.deleteNote(noteid);
	
	HttpSession session=null;
	if( f ) 
	{
		session	= request.getSession();
		
		session.setAttribute("DeleteMsg", "Note has been deleted successfully");
		response.sendRedirect("accountpage.jsp");
		System.out.println("Note deleted");
		
	}
	else
	{
session	= request.getSession();
		
		session.setAttribute("wrongMsg", "Something went wrong");
		System.out.println("something crashed bro");
		response.sendRedirect("accountpage.jsp");
	}
	
		
		
	}

	 

}
