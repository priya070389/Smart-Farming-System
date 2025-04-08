<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Notification notificationDetails = new Notification();
	int typeID = 0;
	if (request.getParameter("type_id") != null){
		typeID = Integer.parseInt(request.getParameter("type_id"));
	}
	ArrayList allNotification = notificationDetails.getAllNotification(typeID);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30"> 
        <!-- Middle Column -->
        <div class="one_half" style="width:94%"> 
          <!-- ################################################################################################ -->
          <h2>All Notifications</h2>
          <ul class="nospace listing">
			<% for(int i=0;i<allNotification.size();i++) 
			{ 
				HashMap NotificationDetails = new HashMap();
				NotificationDetails = (HashMap)allNotification.get(i);
				String desc = NotificationDetails.get("notification_description").toString();
			%>	
            <li class="clear">
              <div class="imgl borderedbox">
			        <a href="notification-details.jsp?notification_id=<% out.print(NotificationDetails.get("notification_id")); %>">
              <img src="notificationImages/<% out.print(NotificationDetails.get("notification_image")); %>" style="height:120px; width:120px">
              </a>
			  </div>
              <p class="nospace btmspace-15" style="text-align: left;"><a href="notification-details.jsp?notification_id=<% out.print(NotificationDetails.get("notification_id")); %>" style="font-size:15px; font-weight:bold;"><% out.print(NotificationDetails.get("notification_title")); %></a></p>
			        <p style="text-align: left;"><% out.print(desc.substring(0,400)); %></p>
            </li>
            <%
			}
			%>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Middle Column --> 
      </div>
      
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>

<%@ include file="includes/footer.jsp" %>
