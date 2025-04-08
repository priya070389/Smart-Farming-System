<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<script>
function gotform(obj) {
	if(obj.value != "") {
		window.location.href = obj.value;
	}
}
</script>
<%
	Warning warningDetails = new Warning();
	String employee_id = request.getParameter("user_id").toString();
	ArrayList allWarnings = warningDetails.getAllWarning(employee_id);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>All Warnings of Users</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Warning Message</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allWarnings.size();i++) 
			{ 
				HashMap WarningDetails = new HashMap();
				WarningDetails = (HashMap)allWarnings.get(i);
			%>
				<tr>
				  <td><% out.print(WarningDetails.get("warning_user_id")); %></td>
				  <td><% out.print(WarningDetails.get("employee_first_name")); %></td>
				  <td><% out.print(WarningDetails.get("warning_description")); %></td>
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
