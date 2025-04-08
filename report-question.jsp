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
	Question questionDetails = new Question();
	int employee_id = Integer.parseInt((String) session.getAttribute("login_emp_id"));
	ArrayList allQuestions = questionDetails.getAllQuestion(employee_id);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>All Questions of Users</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Title</th>
			  <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allQuestions.size();i++) 
			{ 
				HashMap QuestionDetails = new HashMap();
				QuestionDetails = (HashMap)allQuestions.get(i);
			%>
				<tr>
				  <td><%=(i+1)%></td>
				  <td><% out.print(QuestionDetails.get("question_title")); %></td>
				  <td> <a href="question.jsp?question_id=<% out.print(QuestionDetails.get("question_id")); %>">Edit</a> </td>
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
