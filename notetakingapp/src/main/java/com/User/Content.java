package com.User;

import java.sql.Date;
import java.sql.Timestamp;

public class Content {

	private int id;
	private String title;
	private String content;
	private Date pdate;
	private Timestamp date;
	private UserDetails user;
	
	
	public Content() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Content(int id, String title, String content, Date pdate,Timestamp date, UserDetails user) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
		this.date=date;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	
	
	
	
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	
	
	public UserDetails getUser() {
		return user;
	}
	public void setUser(UserDetails user) {
		this.user = user;
	}



	
	
	
	
	
}
