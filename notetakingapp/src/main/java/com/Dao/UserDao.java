package com.Dao;

import java.sql.Connection;	
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;

public class UserDao {

	
	private Connection conn;
	
	public UserDao(Connection conn)
	{
		super();
		this.conn = conn;
		
	}
	
	public boolean addUser(UserDetails us )
	{
		boolean f= false; 
		
		
		try {
			String query = "insert into user(name,email,password) values(?,?,?)";
		PreparedStatement ps= conn.prepareStatement(query	);
			
		ps.setString(1, us.getName());
		ps.setString(2, us.getEmail());
		ps.setString(3, us.getPassword());
		int i = ps.executeUpdate();
		if(i==1)
		{
			f=true;
			
		}
		
		
		
		
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
		
	}
	
	public UserDetails loginUser(UserDetails us )
	{
		
		UserDetails user=null;
		
		try {
			
			
			String query= "select * from user where email=? and password=?";
			
			PreparedStatement ps= conn.prepareStatement(query);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getPassword());
			
			ResultSet res=ps.executeQuery();
			
			if(res.next())
			{
				user= new UserDetails() ;
				user.setName(res.getString("name"));
				user.setEmail(res.getString("email"));
				user.setPassword(res.getString("password"));
				user.setId(res.getInt("id"));
				
				
				
				
			}
			
			
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
		
	}
	
	
	
	
	
}
