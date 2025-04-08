<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Question questionDetails = new Question();
	int question_id = Integer.parseInt(request.getParameter ("question_id")), questionCount = 6;
	HashMap Values =  questionDetails.getQuestionDetails(question_id);	
	String description = Values.get("question_description").toString();
	Qcomments trDetails = new Qcomments();
	ArrayList QcommentsDetails =  trDetails.getAllQcomments(request.getParameter ("question_id"));
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
	  <form action="model/qcomment.jsp" method="post">
        <div id="comments" style="width: 67%; float:left; margin-right:30px">
        <h2><% out.print(Values.get("question_title")); %> by <%=Values.get("employee_first_name")%></h2>
        <div>
			<div>
				<div><% out.print(Values.get("question_title")); %></div>
				<div><% out.print(description.replace("\n", "<br/>")); %></div>
			</div>
        </div>
        <% if(QcommentsDetails.size() != 0 ) { %>
		  <div style="border:1px solid; padding:10px;">
			<div style="font-weight:bold; text-decoration:underline;">All Available Answers</div>
			<menu>
			<% 
				for(int i=0;i<QcommentsDetails.size();i++) 
				{ 
					HashMap QcommentsReplyDetails = new HashMap();
					QcommentsReplyDetails = (HashMap)QcommentsDetails.get(i);
			%>
					<li style="background-color:#fff; padding:5px; color:#979797; list-style: none; border: 1px solid #FF0000">
						<div style="color:#ac1212"><% out.print(QcommentsReplyDetails.get("qcomment_name")); %> (<% out.print(QcommentsReplyDetails.get("qcomment_email")); %> ) </div>
						<% out.print(QcommentsReplyDetails.get("qcomment_description")); %>
					</li>
			<%
				}
			%>
			</menu>
		  </div>
		  <% } %>
          <div>
		    <label for="email" style="font-weight:bold;">Name<span>*</span></label>
			<input type="text" name="qcomment_name" id="qcomment_name" size="22" style="width:300px;" required>
            <label for="email" style="font-weight:bold;">Email<span>*</span></label>
			<input type="text" name="qcomment_email" id="qcomment_email" size="22" style="width:300px;" required>
			<label for="email" style="font-weight:bold;">Your Comments<span>*</span></label>
			<textarea name="qcomment_description" style="height:100px; width:600px;" required></textarea>
          </div>
		  <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Post Comment">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="question_id" value="<% out.print(Values.get("question_id")); %>"/>
		</div>
        <div style="float: left">
        	
        </div>
		</form>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
