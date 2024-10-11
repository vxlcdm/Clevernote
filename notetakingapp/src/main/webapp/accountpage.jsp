<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="com.User.UserDetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="logo.png" type="image/x-icon" />
<title>Notes - Clevernote</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
 
 

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

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







#snackbar1 {
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

#snackbar1.show1 {
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







#snackbar2 {
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

#snackbar2.show2 {
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








 



<link rel="stylesheet" href="all-content/css/style.css">

<%@include file="all-content/allcss.jsp" %>
</head>



<body>

<div  class="bg-custom">



<nav class="navbar  bg-custom  navbar-custom">


  <div class="container-fluid  bg-custom"  >
  
  
  
  <%
    UserDetails user=(UserDetails)session.getAttribute("userD");
  %>
  
  
  <button type="button" class="btn --bs-dark-text-emphasis   btn-custom   bg-custom   "   data-bs-toggle="modal" data-bs-target="#exampleModal">
  <strong class="fr    colortt"><a class=" navbar-brand    "  >Welcome <%=user.getName().toUpperCase() %> </a></strong>
</button>
  
  
  
  <%
  
  %>
  
 
   

      
      <a href="LogoutServlet" class="btn  btn btn-outline-light me-2 custom-b " type="submit">LOG OUT</a>
    

    
    
    
    
    
    
    
    
  </div>
</nav>









</div>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
 <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">USER DETAILS</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      
      <div class="modal-body container text-center">
       <i class="fa fa-user fa-3x">
       </i>
       
       <h4><%=user.getName() %></h4>
       <table class="table">
       <tbody>
       
       
       <tr>
       <th>User ID</th>
       <td><%=user.getId() %></td>
       </tr>
       
       <tr>
       <th>User Name</th>
       <td><%=user.getName() %></td>
       </tr>
       
       
       <tr>
       <th>Email ID</th>
       <td><%=user.getEmail() %></td>
       </tr>
       
       </tbody>
       
       
       </table>
       
       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       
      </div>
       
    </div>
  </div>
  
  
  
  
</div>










<%@include file="acpgan.jsp" %>




<!-- <button id="snackbore"   onclick="myFunction()">Show Snackbar</button> -->














<div id="snackbar">NOTE CREATED SUCCESSFULLY</div>

<div id="snackbar1">NOTE UPDATED SUCCESSFULLY</div>

<div id="snackbar2">NOTE DELETED SUCCESSFULLY</div>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
   
   
    <script>
function myFunction() {
  var x = document.getElementById("snackbar");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>




      <% 
    String ncs=(String)  session.getAttribute("ncs");
      
      if(ncs!=null)
      {%>
    	  <div class="" role="">
    	 
    	 <script>
    	 {
    		  var x = document.getElementById("snackbar");
    		  x.className = "show";
    		  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
    		}
    	 </script>
    	 
    	</div> 
      <%
      session.removeAttribute("ncs");
      } 
      
      %> 
      
      
      
<%
String updateMsg = (String) session.getAttribute("updtmsg");
if(updateMsg!=null)
{%>
<div class="" role="">
       
       <script>
       {
          var x = document.getElementById("snackbar1");
          x.className = "show1";
          setTimeout(function(){ x.className = x.className.replace("show1", ""); }, 3000);
        }
       </script>
       
      </div> 
	
      <%
      session.removeAttribute("updtmsg");
      } 
      
      %> 
      
      
      
      <%
String deleteMsg = (String) session.getAttribute("DeleteMsg");
if(deleteMsg!=null)
{%>
<div class="" role="">
       
       <script>
       {
          var x = document.getElementById("snackbar2");
          x.className = "show2";
          setTimeout(function(){ x.className = x.className.replace("show2", ""); }, 3000);
        }
       </script>
       
      </div> 
	
      <%
      session.removeAttribute("DeleteMsg");
      } 
      
      %> 
      
      
      
<br><br><br>
<br>
<br>




     <%@include file="shownotes.jsp" %>


</body>
</html>