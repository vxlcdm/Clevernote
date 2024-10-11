<%@page import="com.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="com.User.UserDetails" %>
       
  <%@page import="com.User.Content" %> 
  <%@page import="com.Dao.PostDao" %> 
<!DOCTYPE html>
<html>
<head>

<link rel="shortcut icon" href="logo.png" type="image/x-icon" />
<meta charset="ISO-8859-1">
<title>   Edit notes     </title>




<link rel="stylesheet" href="all-content/css/bootstrap.css">


<link rel="stylesheet" href="all-content/css/style.css">





</head>
<body>

<%
Integer nid=Integer.parseInt(request.getParameter("note_id"));

PostDao content =new PostDao(DbConnect.getConn());
      Content c=content.getDataById(nid);



%>


<div class="container-fluid">




<div    class="container">


<div class="row">
<div class="col-md-12">
<br><br>
<center>

<h1><strong>EDIT NOTE</strong></h1>


</center>





<form   action = "NoteEditServlet" method="post">
<br>
<input type="hidden"   value="<%=nid%>"  name="noteid">

  <div class="form-group">

  
  
  
      
  
  
  
  
    <label for="exampleInputEmail1" class="form-label">Title for note</label>
    
  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  placeholder="Title goes here"   required="required" name="title"  value="<%=c.getTitle()%>">
    </div>
   
   <br>
   
   
   <div class="  ">
   
   <label for="exampleFormControlTextarea1" class="form-label">Content for note</label>
   
   <div class="input-group">
    <span class="input-group-text">Original note</span>
    <input class="form-control" type="text" value="<%=c.getContent()%>"  aria-label="readonly input example" readonly>
    </div>
    <br>
    
    
    <div class="input-group">
    <span class="input-group-text">Update your note</span>
    <textarea rows="7" class="form-control" id="exampleFormControlTextarea1"  value="<%=c.getContent()%>"           name="content"     required="required"   ></textarea>
    </div>
   </div>
   
   
   
   
   <br>
   <div class="container text-center">
   <button type="submit" class="btn btn-primary">UPDATE</button>
   </div>
   
  
</form>


















</div>




</div>
</div>




</div>




















</body>
</html>