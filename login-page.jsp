<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<div class="wrapper row3" style="margin:0 auto">
  <div class="rounded" style="margin:0 auto">
    <main class="container clear" style="margin:0 auto;"> 
    <center>
      <!-- main body --> 
	    <div style="width: 50%; border: 1px solid; padding:10px;" id="login-home">
		  <h2>Login to your account</h2>
		  <ul>
        <li><a href="login.jsp?title=Administrator">Admin Login</a></li>
        <li><a href="login.jsp?title=Expert">Expert Login</a></li>
        <li><a href="login.jsp?title=Farmers">Farmer Login</a></li>
        <li><a href="customer-login.jsp?title=Buyers">Buyers Login</a></li>
		  </ul>		  
		</div>
      <div class="clear"></div>
    </center>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
