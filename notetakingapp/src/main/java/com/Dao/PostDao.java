package com.Dao;

import java.sql.Connection;		
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import com.User.Content;
import com.User.UserDetails;

public class PostDao {

	private Connection conn;
	
	public PostDao(Connection conn)
	{
		super();
		this.conn= conn;
		
	}
	public boolean Addnotes( String  ti ,String co ,int ui )
	{
		boolean f= false;
		
		
		try {
			
			String qu="insert into contentdb(title,content,uid) values(?,?,?)";
			
			PreparedStatement ps= conn.prepareStatement(qu);
			ps.setString(1, ti);
			ps.setString(2,  co);
			ps.setInt(3,  ui);
			
			
			int i = ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
				
			}
			
			
			
			
		} catch (Exception e) {
          e.printStackTrace();
		}
		
		return f;
		
	}
	
	
	public List<Content> getData(int id)
	{
		List<Content> list= new ArrayList<Content>();
		Content co  = null;
		
		
		try {
			
			
			String qu= "select * from contentdb where uid=? order by id DESC";
			
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1, id);
			
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				co=new Content();
				co.setId(rs.getInt(1));
				co.setTitle(rs.getString(2));
				co.setContent(rs.getString(3));
				co.setDate(rs.getTimestamp(4));
				list.add(co);
				
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public Content getDataById(int nid)
	{
		Content c=null;
		
		try {
			String qu="select * from contentdb where id=?";
			
			PreparedStatement ps= conn.prepareStatement(qu);
			ps.setInt(1, nid);
			
			ResultSet rs= ps.executeQuery();
			
			if( rs.next()  )
			{
				c=new Content();
				c.setId(rs.getInt(1));
				c.setTitle(rs.getString(2));
				c.setContent(rs.getString(3));
				
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c;
		
	}
	
	
	
	public boolean deleteNote(int nid)
	{
		
		boolean f=false;
		
		try {
			
			String qu="delete from contentdb where id=?";
			
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1, nid);
			int x=ps.executeUpdate();
			if(x==1)
			{
				f=true;	
			}
			
			
			
			
			
			
		} catch (Exception e) {
  e.printStackTrace();
		}
		
		
		
		
		return f;
	}
	
	
	
	public boolean PostUpdate (int nid, String ti, String co)
	{
		
		boolean f= false;
		
		try {
			
			String qu="update contentdb set title=?, content=? where id=?";
			
			PreparedStatement ps= conn.prepareStatement(qu);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, nid);
			 
			int i = ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
			
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return f;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
