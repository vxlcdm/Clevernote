package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class LogoutServlet
 */
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
         
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		
		
		try {
			
			
			
			
		HttpSession session= request.getSession();
		session.removeAttribute("userD");
			
			HttpSession session2=request.getSession();
			session.setAttribute("logoutmsg", "Logged out successfully");
			response.sendRedirect("login.jsp");
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		
		
		
		
		
	}

	 
}
