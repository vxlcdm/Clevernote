<%@page import="com.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.User.UserDetails" %> 
  <%@page import="com.User.Content" %> 
  <%@page import="com.Dao.PostDao" %>  
  <%@ page import="java.util.ArrayList" %>
  <%@ page import="java.util.List" %>

    <%
    UserDetails user3=(UserDetails)session.getAttribute("userD");
    
    
    %>
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<<head>
<link rel="shortcut icon" href="logo.png" type="image/x-icon" />
<meta charset="ISO-8859-1">
<title>Notes - Clevernote</title>


<style>
#snackbar {
  visibility:  hidden;
  min-width: 250px;
  margin-left: -125px;
  background-color: #333;
  color: #fff;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: absolute;
  z-index: 10;
  left: 50%;
  bottom: 30px;
  font-size: 17px;
}
#snackbore
{
position: absolute;
z-index: -10;

}

#snackbar.show {
  visibility: visible;
  -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
  animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
  from {bottom: 0; opacity: 0;} 
  to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
  from {bottom: 0; opacity: 0;}
  to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
  from {bottom: 30px; opacity: 1;} 
  to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
  from {bottom: 30px; opacity: 1;}
  to {bottom: 0; opacity: 0;}
}
</style>


<link rel="stylesheet" href="all-content/css/bootstrap.css">


<link rel="stylesheet" href="all-content/css/style.css">








</head>


<body>

      
     


<div class= " container">
<h2 class"text-center">ALL NOTES</h2>


<div  class="row" >

<div class="col-md-12">

<%
   
   if(user3!=null)
   {
	   PostDao ob= new PostDao( DbConnect.getConn() );
	   List<Content> co=ob.getData(user3.getId());
	  
	   
	   for(Content cont:co)
	   {%>
	   
	   <div class="card mt-3">

<div id="snackbar">NOTE UPDATED SUCCESSFULLY</div>

<img   alt=""  src="all-content/img/ntie.jpg"      class="card-img-top mt-2 mx-auto"   style="max-width:100px;">


<div class="card-boy p-4">


<h5 class="card-title" >  <%=cont.getTitle() %> </h5>

<p><%=cont.getContent() %> </p>

<p>
 
<b class="text-primary"></b>
</p>

<p>
<b class="text-success">Last updated : </b> <%=cont.getDate() %><br>
<b class="text-primary"></b>
</p>

<div class="container text-center mt-2">
<a  href="edit.jsp?note_id=<%=cont.getId() %>"  class="btn btn-primary  ">Edit</a>



<a  href="DeleteServlet?note_id=<%=cont.getId() %>"  class="btn btn-danger">Delete</a>
</div>




   
   
   
</div>



</div>
	   
	   
	   
		   
	   <%}
	   
	   
	   
   }
   %>




</div>
</div>
</div>


</body>
</html>