<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Warning warningDetails = new Warning();
	String warningLabel = "Save";
	int warning_id = Integer.parseInt(request.getParameter ("warning_id"));
	if(warning_id != 0) {
		warningLabel = "Update";
	}
  HashMap Values =  warningDetails.getWarningDetails(warning_id);	
  

	String employee_id = request.getParameter ("employee_id").toString();
	ArrayList allWarnings = warningDetails.getAllWarning(employee_id);

%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Warning for User</h2>
        <form action="model/warning.jsp" method="post">
            <div>
              <label for="email">Warning Message<span>*</span></label>
			        <textarea style="width:500px; height:100px;" name="warning_description" required><% out.print(Values.get("warning_description")); %></textarea>
            </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="<% out.print(warningLabel); %> Warning">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
      <input type="hidden" name="warning_id" value="<% out.print(Values.get("warning_id")); %>"/>
      <input type="hidden" name="warning_user_id" value="<% out.print(request.getParameter ("employee_id")); %>"/>
        </form>
        <h2 style="color: #FF0000; font-weight: bold;">All Previous Warnings</h2>
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
