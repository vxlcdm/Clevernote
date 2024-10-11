package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.Dao.UserDao;
import com.User.UserDetails;
import com.db.DbConnect;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email= request.getParameter("umail");
		String password= request.getParameter("upwd");
		
		UserDetails us= new UserDetails();
		us.setEmail(email);
		us.setPassword(password);
		
		UserDao dao= new UserDao(DbConnect.getConn() );
		UserDetails user= dao.loginUser(us);
		
		
		PrintWriter out=response.getWriter();
		HttpSession session;
		
		if(user!=null)
		{
		      session = request.getSession();
			session.setAttribute("userD", user);
			response.sendRedirect("accountpage.jsp");
			
		}
		else
		{
			session=request.getSession();
			session.setAttribute("failed-msg", "Email or password is incorrect. Please enter correct details.");
			response.sendRedirect("login.jsp");
		}
		
		
		
		
	}

}
