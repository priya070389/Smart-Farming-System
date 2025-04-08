<%@ include file="includes/header.jsp" %>
<%@ include file="includes/slider.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Product productDetails = new Product();
  ArrayList allProduct = productDetails.getAllProduct(0);
  
  /// Notification ///
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
        <!-- Middle Column -->
        <div style="width:98%"> 
          <!-- ################################################################################################ -->
          <h2>All Latest Notifications</h2>
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
        </div><br><br>
        <div style="width:98%"> 
          <!-- ################################################################################################ -->
          <h2>FARMER ASSISTANT PORTAL (ALL AVIALABLE PRODUCTS)</h2>          
          <ul class="nospace listing">
          <% for(int i=0;i<allProduct.size();i++) 
			{ 
				HashMap ProductDetails = new HashMap();
				ProductDetails = (HashMap)allProduct.get(i);
			%>
				<li class="product-listing">
					<div class="myimage">
					<a href="product-details.jsp?product_id=<% out.print(ProductDetails.get("product_id")); %>">
						<img src="productImages/<% out.print(ProductDetails.get("product_image")); %>" style="height:110px; width:110px;">
					</a>
					</div>
					<div class="product-price">
						<b style="text-decoration:underline"><% out.print(ProductDetails.get("product_name")); %></b> <br>
						&#8377; <% out.print(ProductDetails.get("product_price")); %>
					</div>
				</li>
			<%
			}
			%>
      </ul>
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
