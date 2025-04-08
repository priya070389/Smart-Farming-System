<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Question questionDetails = new Question();
	String questionLabel = "Save";
	int question_id = Integer.parseInt(request.getParameter ("question_id"));
	if(question_id != 0) {
		questionLabel = "Update";
	}
	HashMap Values =  questionDetails.getQuestionDetails(question_id);	
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Ask Your Question</h2>
        <form action="model/question.jsp" method="post">
		  <div id="empl_id">
            <label for="email">Question Title<span>*</span></label>
            <input type="text" name="question_title" id="question_title" value="<% out.print(Values.get("question_title")); %>" size="22" style="width:400px;" required>
          </div>
          <div>
            <label for="email">Full Description<span>*</span></label>
			      <textarea style="width:400px; height:100px;" name="question_description" required><% out.print(Values.get("question_description")); %></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="<% out.print(questionLabel); %> Question">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="question_id" value="<% out.print(Values.get("question_id")); %>"/>
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
