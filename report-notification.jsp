<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Notification notificationDetails = new Notification();
	ArrayList allNotification = notificationDetails.getAllNotification(0);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Notification Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Image</th>
              <th>Title</th>
              <th>Type</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allNotification.size();i++) 
			{ 
				HashMap NotificationDetails = new HashMap();
				NotificationDetails = (HashMap)allNotification.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(NotificationDetails.get("notification_id")); %></td>
				  <td>
					<a href="notification-details.jsp?notification_id=<% out.print(NotificationDetails.get("notification_id")); %>">
						<img src="notificationImages/<% out.print(NotificationDetails.get("notification_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(NotificationDetails.get("notification_title")); %></td>
				  <td><% out.print(NotificationDetails.get("notification_date")); %></td>
				  <td> <a href="notification.jsp?notification_id=<% out.print(NotificationDetails.get("notification_id")); %>">Edit</a> </td>
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
