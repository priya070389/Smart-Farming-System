<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Product productDetails = new Product();
	int product_id = Integer.parseInt(request.getParameter ("product_id")), productCount = 6;
	HashMap Values =  productDetails.getProductDetails(product_id);	
	int stock = Integer.parseInt(Values.get("product_stock").toString());
	if(stock < 7)
		productCount = stock;

	// Commets and Review ////
	Pcomments commentDetails = new Pcomments();
	ArrayList PcommentsDetails =  commentDetails.getAllPcomments(request.getParameter ("product_id"));
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
        <div id="comments" style="width: 70%; float:left; margin-right:30px">
        <h2>Details of <% out.print(Values.get("product_name")); %></h2>
        <form action="model/cart.jsp" method="post">
        <div>
			<div style="float:left"><img src="productImages/<% out.print(Values.get("product_image")); %>" style="height:320px; width:300px;"></div>
			<div style="float:right; width:345px;">
				<table>
					<tr>
						<td>Name</td>
						<td><% out.print(Values.get("product_name")); %></td>
					</tr>
					<tr>
						<td>Company</td>
						<td><% out.print(Values.get("product_company")); %></td>
					</tr>
					<tr>
						<td>Type</td>
						<td><% out.print(Values.get("product_type")); %></td>
					</tr>
					<tr>
						<td>Price</td>
						<td><% out.print(Values.get("product_price")); %></td>
					</tr>
					<tr>
						<td>Quantity</td>
						<td>
							<% if(productCount != 0 ) { %>
								<select style="width:50px;" name="cart_quantity">
								<% for(int c=1; c<=productCount; c++ ) { %>
									<option value="<%=c%>"><%=c%></option>
								<% } %>
								</select>
							<% } %>
							<%
								if(productCount == 0 )
									out.print("<div style='color:#ff0000'>Product Sold Out.</div>");
								else if(productCount < 6)
									out.print("<br><div style='color:#ff0000'>Only "+productCount+" Items in Stock</div>");
							%>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						Description :
						<% out.print(Values.get("product_description")); %>
						</td>
					</tr>
				</table>
			</div>
			<% if(productCount != 0 ) { %>
			<div style="clear:both; float:right;">
				<input type="submit" value="Add to Cart">
			</div>
			<% } %>
        </div>
        <input type="hidden" name="product_id" value="<% out.print(Values.get("product_id")); %>">
        <input type="hidden" name="product_price" value="<% out.print(Values.get("product_price")); %>">
        <input type="hidden" name="act" value="save">
		</form>
		<div style="clear: both;">&nbsp;</div>

		<form action="model/pcomment.jsp" method="post">
			<% if(PcommentsDetails.size() != 0 ) { %>
				<div style="border:1px solid; padding:10px;">
				<div style="font-weight:bold; text-decoration:underline;">All Users Review or Product </div>
				<menu>
				<% 
					for(int i=0;i<PcommentsDetails.size();i++) 
					{ 
						HashMap PcommentsReplyDetails = new HashMap();
						PcommentsReplyDetails = (HashMap)PcommentsDetails.get(i);
				%>
						<li style="background-color:#fff; padding:5px; color:#979797; list-style: none; border: 1px solid #FF0000">
							<div style="color:#ac1212"><% out.print(PcommentsReplyDetails.get("pcomment_name")); %> (<% out.print(PcommentsReplyDetails.get("pcomment_email")); %> ) </div>
							<% out.print(PcommentsReplyDetails.get("pcomment_description")); %>
						</li>
				<%
					}
				%>
				</menu>
				</div>
				<% } %>
				<div>
					<label for="email" style="font-weight:bold;">Name<span>*</span></label>
					<input type="text" name="pcomment_name" id="pcomment_name" size="22" style="width:300px;" required>
					<label for="email" style="font-weight:bold;">Email<span>*</span></label>
					<input type="text" name="pcomment_email" id="pcomment_email" size="22" style="width:300px;" required>
					<label for="email" style="font-weight:bold;">Your Comments<span>*</span></label>
					<textarea name="pcomment_description" style="height:100px; width:600px;" required></textarea>
				</div>
				<div class="block clear"></div>
				<div>
					<input name="submit" type="submit" value="Post Comment">
					&nbsp;
					<input name="reset" type="reset" value="Reset Form">
				</div>
				<input type="hidden" name="act" value="Save" />
				<input type="hidden" name="product_id" value="<% out.print(Values.get("product_id")); %>"/>
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
