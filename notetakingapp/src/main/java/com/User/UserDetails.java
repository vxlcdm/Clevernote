package com.User;

public class UserDetails {

	private String name;
	private String password;
	private String email; 
	private int Id;
	
	
	public UserDetails()
	{
		super();
		
		
	}

	
	public int getId() {
		return Id;
	}


	public void setId(int id) {
		Id = id;
	}


	public UserDetails(String name, String password, String email )
	{
		super();
		this.name = name;
		this.email= email;
		this.password = password;
		
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
