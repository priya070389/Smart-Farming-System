<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Order orderDetails = new Order();
	int customerID = 0;
	int vendorID = 0;
	if(request.getParameter("customer_id")!=null) {
		customerID = Integer.parseInt(request.getParameter("customer_id"));
	}
	else if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("3")) {
		vendorID = Integer.parseInt(session.getAttribute("login_emp_id").toString());
	}
	if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) {
		vendorID = Integer.parseInt(session.getAttribute("login_emp_id").toString());
	}
	ArrayList allOrder = orderDetails.getAllOrder(customerID,vendorID);
	int total = 0;
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Order Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Order ID</th>
              <% if(session.getAttribute("login_level").equals("1")) { %>
              <th>User ID </th>
              <% } %>
              <th>Date</th>
              <th>Amount</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allOrder.size();i++) 
			{ 
				HashMap OrderDetails = new HashMap();
				OrderDetails = (HashMap)allOrder.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(OrderDetails.get("order_id")); %></td>
				  <% if(session.getAttribute("login_level").equals("1")) { %>
				  <td><% out.print(OrderDetails.get("order_user_id")); %></td>
				  <% } %>
				  <td><% out.print(OrderDetails.get("order_date")); %></td>
				  <td>&#8377; <% out.print(OrderDetails.get("order_total")); %>.00</td>
				  <td><% out.print(OrderDetails.get("order_status")); %></td>
				  <td style="text-align:center; width:200px;"> 
				  <% if(session.getAttribute("login_level").equals("3") || session.getAttribute("login_level").equals("1")) { %>
					<a href="order.jsp?order_id=<% out.print(OrderDetails.get("order_id")); %>">
						Edit
					</a>
					&nbsp;|&nbsp;
				   <% } %>
					<a href="payment-receipt.jsp?order_id=<% out.print(OrderDetails.get("order_id")); %>">
						View Items
					</a> 
				  </td>
				</tr>
			<%
			}
			%>
        </tbody>
        </table>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
