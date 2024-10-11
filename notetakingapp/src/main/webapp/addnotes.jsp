<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="com.User.UserDetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="ISO-8859-1">

<link rel="shortcut icon" href="logo.png" type="image/x-icon" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


<script src="https://kit.fontawesome.com/a6c89ca0fd.js"
	crossorigin="anonymous"></script>


<link rel="stylesheet" href="all-content/css/bootstrap.css">


<title>Notes - Clevernote</title>
<%@include file="all-content/allcss.jsp" %>






<link rel="stylesheet" href="all-content/css/style.css">

</head>
<body>





<div class="container-fluid">




<div    class="container">


<div class="row">
<div class="col-md-12">
<br><br>
<center>

<h1><strong>ADD YOUR NOTES</strong></h1>


</center>





<form   action = "AddNoteServlet" method="post">
<br>
  <div class="form-group">
  
  <%
  
  UserDetails us=(UserDetails)session.getAttribute("userD");
  
  %>
  
  <input type="hidden"   value="<%=us.getId()%>"  name="uid">
  
  
  
  
    <label for="exampleInputEmail1" class="form-label">Title for note</label>
    
  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  placeholder="Title goes here"   required="required" name="title"  >
    </div>
   
   <br>
   
   
   <div class="form-group ">
   <label for="exampleInputEmail1" class="form-label">Content for note</label>
   
    <textarea rows="7" cols=""  class="form-control" placeholder="Place your ideas here" 
    required="required" name="content" >
    
    </textarea>
   </div>
   
   
   
   
   <br>
   <div class="container text-center">
   <button type="submit" class="btn btn-primary">CREATE</button>
   </div>
   
  
</form>


















</div>




</div>
</div>




</div>









</body>
</html>