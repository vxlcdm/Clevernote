<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="logo.png" type="image/x-icon" />
<meta charset="ISO-8859-1">
<title>Login to your Clevernote account</title>




<link rel="stylesheet" href="all-content/css/bootstrap.css">


<link rel="stylesheet" href="all-content/css/style.css">


</head>
<body>






<div  class="bgimg">
<img class="logoimg   lcenter" width="1100" height="900"  style=""  
 src="${pageContext.request.contextPath}/all-content/img/BG.png"/> 
</div>

<center>




<div class=" empty  ">




<%@include file="all-content/empty.jsp" %>



<div class=" container stiff   ">
  <div class="column align-items-center  ">
  
  
  
      <div class="col-m-1 offset-2-1 col order-2  stiff">
      
  
      
      
      
      <img class="logoimg   lcenter" width="75" height="75"  style="border-radius:100%"  
 src="${pageContext.request.contextPath}/all-content/img/logo.png"/>     
 
 
 
 
 
 
 
      
      
      
      <div class="  card  card1   ">
      <div class="  card-header text-center text-white bg-custom   "  >
      
      <h2   class="  blackcolor   form  bigfont "    >Sign in</h2>
      <p class="blackcolor   form-text" >   to continue to your Clevernote account.</p>
      
      <br>
      
      
      
      
      <form class="  "  action="loginServlet"  method = "post">
      
       <% 
    String failMsg=(String)  session.getAttribute("failed-msg");
      
      if(failMsg!=null)
      {%>
    	  <div class="alert alert-danger" role="alert">
    	 <%=failMsg %>
    	</div> 
      <%
      session.removeAttribute("failed-msg");
      } 
      
      %> 
      
      
      <%
      String lgm=(String)session.getAttribute("logoutmsg");
      if(lgm!=null)
      {%>
    	
    	<div class="alert alert-success" role="alert">
    	  <%=lgm%>
    	</div> 
      <%
      session.removeAttribute("lgm");
      }
      
      
      %>
      
      
      
  <div class="ms-1">
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  placeholder="Email address"  name="umail">
    </div>
    
    
   <br>
  
  
  <div class="ms-1">
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="upwd">
  </div>
  
 
  
  
    
  

  
  <br>
  
  
  <button type="submit" class="btn btn-primary">Continue</button>
</form>
      
      <br>
      
      
      
      <div id="emailHelp" class="form-text">Don't have an account? <a href="register.jsp">  Sign up</a>   </div>
  </div>
      
      
      
      
      </div>
         
      <br>
       <br>
      
      
      </div>
      
      
      </div>
  </div>


<div class="  footer    ">
&#169 2024 Clevernote. All rights reserved.
<br>
 Security
 Legal
Privacy
</div>




</div>
</center>
</div>





</body>
</html>