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
	ArrayList allQuestions = questionDetails.getAllQuestion(0);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>All Questions of Users</h2>
		<div style="width: 70%; float:left; margin-right:30px" id="login-home">
		<ul>
			<% for(int i=0;i<allQuestions.size();i++) 
			{ 
				HashMap QuestionDetails = new HashMap();
				QuestionDetails = (HashMap)allQuestions.get(i);
			%>
			<li><a href="question-details.jsp?question_id=<% out.print(QuestionDetails.get("question_id")); %>"><% out.print(QuestionDetails.get("question_title")); %></a></li>
			<%
			}
			%>
		</ul>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
