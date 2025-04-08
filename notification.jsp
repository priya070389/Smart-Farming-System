<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Notification notificationDetails = new Notification();
	int notification_id = Integer.parseInt(request.getParameter ("notification_id"));
	HashMap Values =  notificationDetails.getNotificationDetails(notification_id);	
%>
<script>
function validImage() {
	var val = $("#notification_image").val();
	var id = $("#notification_id").val();
	if(id == '' || val != '')
	{
		if(val == '') {
			alert('Choose the Notification Image');
			return false;
		}
		if (!val.match(/(?:gif|jpg|png|bmp)$/)) {
			// inputted file path is not an image of one of the above types
			alert("inputted file path is not an image!");
			return false;
		}
	}
	return true;
}
</script>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Notification Form</h2>
		<form method="post" action="UploadNotification" enctype="multipart/form-data" onsubmit="return validImage()">
          <div class="half_width">
            <label for="email">Notification Title<span>*</span></label>
            <input type="text" name="notification_title" id="notification_title" value="<% out.print(Values.get("notification_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Notification Date<span>*</span></label>
            <input type="text" name="notification_date" id="notification_date" value="<% out.print(Values.get("notification_date")); %>" size="22" style="width:300px;" required>
          </div>
          <div style="clear:both">
            <label for="email">Image<span>*</span></label>
            <input type="file" name="notification_image" id="notification_image" style="width:300px">
          </div>
          <div style="clear:both">
            <label for="email">Description<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="notification_description" required><% out.print(Values.get("notification_description")); %></textarea>
          </div>
          <% if(!Values.get("notification_image").equals("")) { %>
          <div class="half_width">
			<img src="notificationImages/<% out.print(Values.get("notification_image")); %>" style="height:100px; width:100px;">
          </div>
          <% } %>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Notification">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("notification_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="type_id" value="0" />
		  <input type="hidden" id="notification_id" name="notification_id" value="<% out.print(Values.get("notification_id")); %>"/>
        </form>
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
