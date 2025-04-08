<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
	    <div style="width: 70%; float:left; margin-right:30px" id="login-home">
		  <h2>Welcome to Farmer Assistance Portal Dashboard</h2>
		  
		  <!-- Dashboard For Employee Section -->
		  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("4")) { %>		
		  <ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="about-us.jsp">Shopping More</a></li>
			<li><a href="report-order.jsp?customer_id=<%=session.getAttribute("customer_id")%>">My Orders</a></li>
			<li><a href="customer.jsp?customer_id=<%=session.getAttribute("customer_id")%>">My Account</a></li>
			<li><a href="model/customer.jsp?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		 <!-- Dashboard For Super Admin Section -->
		 <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
		  <ul>
			<li><a href="employee.jsp?employee_id=0">Add Experts</a></li>
			<li><a href="type.jsp?type_id=0">Add Product Type</a></li>
			<li><a href="notification.jsp?notification_id=0">Publish Notification</a></li>
			<li><a href="report-employee.jsp?type=2">All Experts</a></li>
			<li><a href="report-employee.jsp?type=3">All Farmers</a></li>
			<li><a href="report-customer.jsp">All Customers</a></li>
			<li><a href="report-product.jsp?type_id=0">All Product</a></li>
			<li><a href="report-type.jsp?type=2">All Product Types</a></li>
			<li><a href="report-notification.jsp">All Notification</a></li>
			<li><a href="change-password.jsp">Change Password</a></li>
			<li><a href="login.jsp?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		<!-- Dashboard For Super Admin Section -->
		<% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("2")) { %>		
		<ul>
			<li><a href="question-list.jsp">Quesion List</a></li>
            <li><a href="notification-list.jsp">All Notification</a></li>
			<li><a href="change-password.jsp">Change Password</a></li>
			<li><a href="login.jsp?act=logout">Logout</a></li>
		</ul>
		<% } %>
		<!-- Dashboard For Super Admin Section -->
		<% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("3")) { %>		
		<ul>
			<li><a href="product.jsp?product_id=0">Add Product</a></li>
			<li><a href="question.jsp?question_id=0">Request Support</a></li>
			<li><a href="report-product.jsp?type_id=0">All Product</a></li>
			<li><a href="report-order.jsp?customer_id=0">All Order</a></li>
			<li><a href="notification-list.jsp">All Notification</a></li>
			<li><a href="report-question.jsp">My Questions</a></li>
			<li><a href="question-list.jsp">Quesion List</a></li>
			<li><a href="report-stock.jsp?type_id=0">Stock Report</a></li>
			<li><a href="change-password.jsp">Change Password</a></li>
			<li><a href="login.jsp?act=logout">Logout</a></li>
		</ul>
		<% } %>
		<% if(session.getAttribute("login_level") != null && !session.getAttribute("login_level").equals("1") && !session.getAttribute("login_level").equals("4")) { 
			Warning warningDetails = new Warning();
			String employee_id = session.getAttribute("login_emp_id").toString();
			ArrayList allWarnings = warningDetails.getAllWarning(employee_id);
		%>
		<h2 style="color: #FF0000; font-weight: bold;">Your Warnings</h2>
		<table>
			<tbody>
			  <% for(int i=0;i<allWarnings.size();i++) 
			  { 
				  HashMap WarningDetails = new HashMap();
				  WarningDetails = (HashMap)allWarnings.get(i);
			  %>
				  <tr>
					<td style="color: #FF0000;"><% out.print(i+1); %></td>
					<td><% out.print(WarningDetails.get("warning_description")); %></td>
				  </tr>
			  <%
			  }
			  %>
			  </tbody>
		  </table>
		  <% } %>
		</div>
		<div style="float: left">
			<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
			<div><img src="images/save_2.jpg" style="width: 250px"></div>
		</div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
