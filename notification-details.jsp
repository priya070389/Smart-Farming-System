<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Notification notificationDetails = new Notification();
	int notification_id = Integer.parseInt(request.getParameter ("notification_id")), notificationCount = 6;
	HashMap Values =  notificationDetails.getNotificationDetails(notification_id);	
	String description = Values.get("notification_description").toString();
	Comments trDetails = new Comments();
	ArrayList CommentsDetails =  trDetails.getAllComments(request.getParameter ("notification_id"));
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
	  <form action="model/comment.jsp" method="post">
        <div id="comments" style="width: 67%; float:left; margin-right:30px">
        <h2><% out.print(Values.get("notification_title")); %></h2>
        <div>
			<div><img src="notificationImages/<% out.print(Values.get("notification_image")); %>" style="width:650px;"></div>
			<div>
				<div><% out.print(Values.get("notification_title")); %></div>
				<div><% out.print(description.replace("\n", "<br/>")); %></div>
			</div>
        </div>
        <% if(CommentsDetails.size() != 0 ) { %>
		  <div style="border:1px solid; padding:10px;">
			<div style="font-weight:bold; text-decoration:underline;">All Users comments</div>
			<menu>
			<% 
				for(int i=0;i<CommentsDetails.size();i++) 
				{ 
					HashMap CommentsReplyDetails = new HashMap();
					CommentsReplyDetails = (HashMap)CommentsDetails.get(i);
			%>
				<li style="background-color:#fff; padding:5px; color:#979797; list-style: none; border: 1px solid #FF0000">
					<div style="color:#ac1212"><% out.print(CommentsReplyDetails.get("comment_name")); %> (<% out.print(CommentsReplyDetails.get("comment_email")); %> ) </div>
						<% out.print(CommentsReplyDetails.get("comment_description")); %>
					</li>
			<%
				}
			%>
			</menu>
		  </div>
		  <% } %>
          <div>
		    <label for="email" style="font-weight:bold;">Name<span>*</span></label>
			<input type="text" name="comment_name" id="comment_name" size="22" style="width:300px;" required>
            <label for="email" style="font-weight:bold;">Email<span>*</span></label>
			<input type="text" name="comment_email" id="comment_email" size="22" style="width:300px;" required>
			<label for="email" style="font-weight:bold;">Your Comments<span>*</span></label>
			<textarea name="comment_description" style="height:100px; width:600px;" required></textarea>
          </div>
		  <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Post Comment">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="notification_id" value="<% out.print(Values.get("notification_id")); %>"/>
		</div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
		</form>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
