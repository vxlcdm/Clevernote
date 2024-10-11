package com.Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.*;

import com.Dao.UserDao;
import com.User.UserDetails;
import com.db.DbConnect;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response )
	throws IOException
	
	{
		

		String name= request.getParameter("fname");
		String email= request.getParameter("umail");
		String password= request.getParameter("upwd");
	
		
		
		UserDetails us= new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		
		UserDao dao= new UserDao(DbConnect.getConn());
		boolean f=dao.addUser(us);
		PrintWriter out=response.getWriter();
		HttpSession session;
		if(f)
		{
			
			session= request.getSession();
			session.setAttribute("reg-success", "Registration success");
			
			response.sendRedirect("register.jsp");
			
			
		}
		else 
		{
			session=request.getSession();
			session.setAttribute("failed-msg", "Something went wrong. Please try again later");
			response.sendRedirect("register.jsp");
			
		}
		
		
		
		
	}
	
	
	
	
	
	
	
	
}
